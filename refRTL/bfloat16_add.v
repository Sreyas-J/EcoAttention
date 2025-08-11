module fp16adder (
    a,b,sum
);

    parameter EXP_SIZE = 8;
    parameter SIGN_SIZE = 1; 
    parameter MANTISSA_SIZE = 7;
    input [SIGN_SIZE+EXP_SIZE+MANTISSA_SIZE-1:0] a,b;
    output wire [SIGN_SIZE+EXP_SIZE+MANTISSA_SIZE-1:0] sum;

    wire a_sign,b_sign,sum_sign,add_carry;
    wire [EXP_SIZE-1:0] a_exp,b_exp;
    wire [MANTISSA_SIZE:0] a_mant,b_mant,a_mant_temp,b_mant_temp;
    wire [MANTISSA_SIZE+1:0] sum_mantissa_temp;
    wire [MANTISSA_SIZE-1:0]sum_mantissa_final;
    wire [MANTISSA_SIZE+1:0] sum_mantissa_in[0:MANTISSA_SIZE+1];
    wire [EXP_SIZE:0] sum_exp[0:MANTISSA_SIZE+1];
    wire [EXP_SIZE:0] expsub,abs_diff;
    wire [EXP_SIZE:0]sum_exp_final;
    wire sum_zero;
    wire [SIGN_SIZE+EXP_SIZE+MANTISSA_SIZE-1:0] sum_1;

    wire flag,fl_inf;
    

    assign {a_sign,a_exp,a_mant_temp[MANTISSA_SIZE-1:0]} = a;
    assign a_mant_temp[MANTISSA_SIZE] = 1'b1;

    assign {b_sign,b_exp,b_mant_temp[MANTISSA_SIZE-1:0]} = b;
    assign b_mant_temp[MANTISSA_SIZE] = 1'b1;

    assign sum_zero = (a_sign^b_sign) & (a_exp == b_exp) & (a_mant_temp == b_mant_temp) ? 1'b1 : 1'b0;

    assign expsub = a_exp - b_exp;
    assign abs_diff = expsub[EXP_SIZE] ? ~(expsub[EXP_SIZE:0]) + 1'b1 : expsub[EXP_SIZE-1:0];

    assign a_mant = expsub[EXP_SIZE] ? a_mant_temp >> abs_diff : a_mant_temp;
    assign b_mant = expsub[EXP_SIZE] ? b_mant_temp : b_mant_temp >> abs_diff;

    assign sum_exp[0] = expsub[EXP_SIZE] ? b_exp : a_exp;

    assign sum_mantissa_in[0] = !(a_sign ^ b_sign) ? a_mant + b_mant :
		    (b_mant > a_mant) ? b_mant - a_mant :
			a_mant - b_mant;
    
    assign flag = a_sign ^ b_sign;
    assign add_carry = sum_mantissa_in[0][MANTISSA_SIZE+1];
    assign sum_exp_final = sum_zero ? 0 : flag ? sum_exp[MANTISSA_SIZE]: add_carry ? sum_exp[0] + 1'b1 : sum_exp[0];
    assign fl_inf = (&sum_exp_final[EXP_SIZE-1:0] || sum_exp_final[EXP_SIZE]);
    assign sum_mantissa_final = sum_zero ? 0 : flag ? sum_mantissa_in[MANTISSA_SIZE][MANTISSA_SIZE-1:0] : add_carry ? sum_mantissa_in[0] >> 1 : sum_mantissa_in[0];

    genvar i;
    generate

        for (i=1;i<MANTISSA_SIZE+1;i=i+1) begin : norm_loop
            assign sum_exp[i] = sum_mantissa_in[i-1][MANTISSA_SIZE] ? sum_exp[i-1] : sum_exp[i-1] - 1'b1;
            assign sum_mantissa_in[i] = sum_mantissa_in[i-1][MANTISSA_SIZE] ? sum_mantissa_in[i-1] : sum_mantissa_in[i-1] << 1; 
        end

    endgenerate
    assign sum_sign = sum_zero ? 0 : expsub[EXP_SIZE] ? b_sign : a_sign;
    assign sum = fl_inf ? ({sum_sign,8'hff,7'b0}) : {sum_sign,sum_exp_final[EXP_SIZE-1:0],sum_mantissa_final};

endmodule
