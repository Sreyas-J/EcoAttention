`timescale 1ns / 1ps

module exp_fixed #(
    parameter int DATA_WIDTH = 16,
    parameter int EXP = 5,
    parameter int MANT = 11
)(
    input logic aclk,                                  // input wire aclk
    input logic s_axis_a_tvalid,            // input wire s_axis_a_tvalid
    output logic s_axis_a_tready,            // output wire s_axis_a_tready
    input logic [DATA_WIDTH-1:0] s_axis_a_tdata,              // input wire [31 : 0] s_axis_a_tdata
    output logic m_axis_result_tvalid,  // output wire m_axis_result_tvalid
    input logic m_axis_result_tready,  // input wire m_axis_result_tready
    output logic [DATA_WIDTH-1:0] m_axis_result_tdata    // output wire [31 : 0] m_axis_result_tdata
);  
    // Special Values
    localparam [15:0] FP16_POS_INF = 16'h7C00;
    localparam [15:0] FP16_NEG_INF = 16'hFC00;
    localparam [15:0] FP16_ZERO    = 16'h0000;
    localparam [15:0] FP16_ONE     = 16'h3C00;
    localparam [15:0] FP16_NAN     = 16'h7E00;

    // Hard Boundaries for e^x in FP16
    // x > ln(65504) ~= 11.09 leads to Overflow (Inf)
    // x < ln(2^-24) ~= -16.63 leads to Underflow (Zero)
    // Represented in FP16 hex roughly:
    localparam [15:0] X_MAX_BOUND = 16'h498F; // approx 11.1
    localparam [15:0] X_MIN_BOUND = 16'hC854; // approx -16.65 (negative)

    // Log2(e) in Fixed Point Q4.14 format for Range Reduction
    // log2(e) = 1.44269504... => 0x5C55 in Q14
    // We use a slightly wider fixed point for intermediate calcs to preserve precision.
    localparam signed [17:0] LOG2_E_FIXED = 18'h05C55; // Q2.16 approx

    // Minimax Coefficients for 2^t on 
    localparam signed [15:0] C0 = 16'h4000; // 1.0
    localparam signed [15:0] C1 = 16'h2C5C; // 0.6931...
    localparam signed [15:0] C2 = 16'h0F60; // 0.2402...
    localparam signed [15:0] C3 = 16'h038D; // 0.0555...

    // =========================================================================
    // STAGE 1: UNPACK & BOUNDARY CHECK
    // =========================================================================
    
    logic        s1_sign;
    logic [4:0]  s1_exp;
    logic [9:0]  s1_mant;
    logic        s1_is_nan, s1_is_inf, s1_is_zero;
    logic        s1_overflow, s1_underflow;
    logic [15:0] s1_x_raw;
    logic        s1_valid;

    always_ff @(posedge aclk) begin
//        if (!rst_n) begin
//            s1_valid <= 0;
//            s1_x_raw <= 0;
//        end 
//          else begin
            s1_valid <= s_axis_a_tvalid;
            s1_x_raw <= s_axis_a_tdata;
            
            // Decomposition
            s1_sign <= s_axis_a_tdata;
            s1_exp  <= s_axis_a_tdata[14:10];
            s1_mant <= s_axis_a_tdata[9:0];

            // Special Case Detection
            s1_is_zero <= (s_axis_a_tdata[14:0] == 0); // Handles +0 and -0
            s1_is_inf  <= (s_axis_a_tdata[14:10] == 5'h1F) && (s_axis_a_tdata[9:0] == 0);
            s1_is_nan  <= (s_axis_a_tdata[14:10] == 5'h1F) && (s_axis_a_tdata[9:0]!= 0);

            // Domain Check: x > 11.09 or x < -16.63
            // Assuming normalized inputs for magnitude comparison logic
            // Positive Overflow Check
            if (s_axis_a_tdata == 0 && s_axis_a_tdata > X_MAX_BOUND) 
                s1_overflow <= 1;
            else 
                s1_overflow <= 0;

            // Negative Underflow Check
            // Comparison of magnitude for negative numbers
            if (s_axis_a_tdata == 1 && s_axis_a_tdata[14:0] > X_MIN_BOUND[14:0]) 
                s1_underflow <= 1;
            else 
                s1_underflow <= 0;
        // end
    end

    // =========================================================================
    // STAGE 2: RANGE REDUCTION (Fixed Point Conversion)
    // =========================================================================
    // Goal: Calculate k = floor(x * log2(e)) and fractional remainder f.
    // Convert FP16 x to Fixed Point Q8.16 for calculation.
    
    logic signed [23:0] s2_x_fix;     // Fixed point representation of input
    logic signed [41:0] s2_prod;      // Product x * log2(e)
    logic signed [9:0]  s2_k;         // Integer part
    logic signed [15:0] s2_f;         // Fractional part (reduced argument)
    logic               s2_valid;
    // Propagated flags
    logic s2_ovf, s2_unf, s2_nan, s2_inf, s2_zero, s2_sign;
    
    logic [10:0] mant_full;
    logic signed [31:0] shifted_mant;
    logic signed [31:0] t1;

    always_ff @(posedge aclk) begin
        // if (!rst_n) s2_valid <= 0;
        // else begin
            s2_valid <= s1_valid;
            
            // Flag Propagation
            s2_ovf  <= s1_overflow; s2_unf <= s1_underflow;
            s2_nan  <= s1_is_nan;   s2_inf <= s1_is_inf;
            s2_zero <= s1_is_zero;  s2_sign <= s1_sign;

            // Float to Fixed Conversion
            // 1. Restore hidden bit
            
            mant_full = (s1_exp == 0)? {1'b0, s1_mant} : {1'b1, s1_mant};
            
            // 2. Unbias exponent: true_exp = s1_exp - 15
            // 3. Shift to Q8.16 format.
            //    Mantissa is effectively Q1.10 (value 1.xxxxx)
            //    We need to shift it based on true_exp.
            //    Base value is mant_full >> 10.
            //    x_fix = mant_full * 2^(exp - 15).
            
            // Shifter logic (Simplified for readability, normally a barrel shifter)
            // Range of true_exp is -14 to 15.
            // Target format Q8.16 means bit 16 is integer LSB.
            
            
            if (s1_exp >= 15)
                shifted_mant = {11'b0, mant_full, 10'b0} << (s1_exp - 15);
            else
                shifted_mant = {11'b0, mant_full, 10'b0} >> (15 - s1_exp);
                
            // Apply sign
            s2_x_fix = s1_sign? -shifted_mant[23:0] : shifted_mant[23:0];

            // Range Reduction: x * log2(e)
            // s2_x_fix is Q8.16, LOG2_E is Q2.16
            // Product is Q10.32
            s2_prod = signed'(s2_x_fix) * signed'(LOG2_E_FIXED);
            
            // Extract Integer k and Fraction f
            // In Q10.32, the binary point is at bit 32.
            // s2_k is the integer part (bits near 32)
            // s2_f is the fractional part (bits 31 down to 16 for Q16 approx)
            
            s2_k <= s2_prod[41:32]; 
            s2_f <= s2_prod[31:16]; // Keep 16 bits of fraction
        // end
    end

    // =========================================================================
    // STAGE 3: POLYNOMIAL KERNEL (Horner's Scheme)
    // =========================================================================
    // Evaluate P(f) = C0 + f*(C1 + f*(C2 + f*C3))
    // Optimized for DSP usage.
    
    logic signed [31:0] s3_poly_res; // Result of polynomial
    logic signed [9:0]  s3_k;
    logic               s3_valid;
    logic s3_ovf, s3_unf, s3_nan, s3_inf, s3_zero, s3_sign;
    
    logic signed [31:0] t2;
    logic signed [31:0] t3;

    always_ff @(posedge aclk) begin
        // if (!rst_n) s3_valid <= 0;
        // else begin
            s3_valid <= s2_valid;
            
            // Propagate Flags
            s3_ovf  <= s2_ovf; s3_unf <= s2_unf;
            s3_nan  <= s2_nan; s3_inf <= s2_inf;
            s3_zero <= s2_zero; s3_sign <= s2_sign;
            s3_k    <= s2_k;

            // Horner's Calculation (Compact representation)
            // Step 1: T1 = C3 * f + C2
            
            t1 = (C3 * s2_f) >>> 14; // Adjust Q format
            t1 = t1 + C2;
            
            // Step 2: T2 = T1 * f + C1
            
            t2 = (t1 * s2_f) >>> 14;
            t2 = t2 + C1;
            
            // Step 3: T3 = T2 * f + C0
            
            t3 = (t2 * s2_f) >>> 14;
            t3 = t3 + C0;
            
            s3_poly_res <= t3; // Result is approx 1.xxxxx in Q2.14
        // end
    end

    // =========================================================================
    // STAGE 4: RECONSTRUCTION & PACKING
    // =========================================================================
    // Final = 2^k * Poly_Res
    // Add k to the exponent of the normalized polynomial result.
    
    logic [15:0] s4_result;
    
    always_comb begin
        // Default assignment
        s4_result = 0;
        
        if (s3_nan)         s4_result = FP16_NAN;
        else if (s3_ovf)    s4_result = FP16_POS_INF;
        else if (s3_unf)    s4_result = FP16_ZERO;
        else if (s3_zero)   s4_result = FP16_ONE; // exp(0)=1
        else if (s3_inf) begin
            if (s3_sign) s4_result = FP16_ZERO; // exp(-inf) = 0
            else         s4_result = FP16_POS_INF;
        end 
        else begin
            // Normal Path
            // Poly_Res is roughly 1.0 to 2.0 (normalized).
            // Its exponent is implicitly 0 (biased 15).
            // We simply add k to the bias.
            
            logic signed [9:0] final_exp;
            final_exp = 15 + s3_k;
            
            // Clamp exponent if it exceeds range (handling corner cases of approximation)
            if (final_exp >= 31) 
                s4_result = FP16_POS_INF;
            else if (final_exp <= 0)
                s4_result = FP16_ZERO; // Flush subnormals to zero for simplicity
            else
                // Concatenate: Sign(0), Exp(5), Mantissa(10)
                // Poly_Res is Q2.14. Bit 14 is integer 1. Bits 13:4 are the 10 mantissa bits.
                s4_result = {1'b0, final_exp[4:0], s3_poly_res[13:4]};
        end
    end

    always_ff @(posedge aclk) begin
        // if (!rst_n) begin
        //     m_axis_result_tvalid <= 0;
        //     m_axis_result_tdata     <= 0;
        // end 
        // else begin
            m_axis_result_tvalid <= s3_valid;
            m_axis_result_tdata     <= s4_result;
        // end
    end
    
endmodule