`timescale 1ns / 1ps

module tb_axis_wrapper;

    // -------------------------------------------------------------------------
    // 1. Parameters
    // -------------------------------------------------------------------------
    localparam int DATA_WIDTH = 32;
    // These must match the parameters in your 'top' module
    localparam int Br = 4;  
    localparam int Bc = 4;  
    localparam int D  = 16; 

    // -------------------------------------------------------------------------
    // 2. Signals
    // -------------------------------------------------------------------------
    logic ACLK;
    logic ARESETN; // Active Low Reset

    // AXI Stream Signals
    logic [127:0] s_axis_tdata,m_axis_data;
    logic         s_axis_tvalid,m_axis_valid;
    logic         s_axis_tready,m_axis_ready;
    logic         s_axis_tlast,m_axis_tlast;

    // Output from Wrapper
    logic         done_irq;

    // -------------------------------------------------------------------------
    // 3. DUT Instantiation
    // -------------------------------------------------------------------------
    axis_wrapper #(
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .axi_clk(ACLK),
        .axi_reset_n(ARESETN),
        .s_axis_data(s_axis_tdata),
        .s_axis_valid(s_axis_tvalid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_ready(s_axis_tready),
        .m_axis_valid(m_axis_valid),
        .m_axis_data(m_axis_data),
        .m_axis_ready(m_axis_ready),
        .m_axis_tlast(m_axis_tlast)
//        .done_irq(done_irq)
    );

    // -------------------------------------------------------------------------
    // 4. Testbench Logic
    // -------------------------------------------------------------------------
    
    // Clock Generation (100MHz)
    always #5 ACLK = ~ACLK;

    // Data Storage (Shortreal for float generation)
    shortreal Qmat [0:Br-1][0:D-1];
    shortreal Kmat [0:Bc-1][0:D-1];
    shortreal Vmat [0:Bc-1][0:D-1];

    // Traversal Indices
    int q_r, q_c;
    int k_r, k_c;
    int v_r, v_c;
    
    // Completion Flags
    bit q_done, k_done, v_done;

    // Temporary logic vectors for bit conversion
    logic [31:0] q_bits, k_bits, v_bits, scale_bits;

    initial begin
        // --- 1. Initialization ---
        ACLK = 0;
        ARESETN = 0; // Assert Reset (Active Low)
        
        s_axis_tdata = 0;
        s_axis_tvalid = 0;
        s_axis_tlast = 0;
        
        q_r = 0; q_c = 0;
        k_r = 0; k_c = 0;
        v_r = 0; v_c = 0;
        q_done = 0; k_done = 0; v_done = 0;
        
        // Define Scale (0.25)
        scale_bits = $shortrealtobits(0.25);

        // --- 2. Matrix Generation ---
        // Same formulas as your original TB
        for (int i = 0; i < Br; i++) begin
            for (int j = 0; j < D; j++) begin
                Qmat[i][j] = shortreal'(i + j * 0.1);
            end
        end

        for (int i = 0; i < Bc; i++) begin
            for (int j = 0; j < D; j++) begin
                Kmat[i][j] = shortreal'(i * 2 + j * 0.2);
                Vmat[i][j] = shortreal'(i * 3 + j * 0.3);
            end
        end

        // --- 3. Reset Sequence ---
        repeat (10) @(posedge ACLK);
        ARESETN = 1; // Release Reset
        repeat (5) @(posedge ACLK);

        $display("Starting AXI Stream Transmission...");

        // --- 4. DMA Simulation Loop ---
        // Loop until all matrices are fully traversed
        while (!q_done || !k_done || !v_done) begin
            
            // --- Determine Q Data (Row-Major) ---
            if (!q_done) begin
                q_bits = $shortrealtobits(Qmat[q_r][q_c]);
                // Update Indices
                if (q_c == D - 1) begin
                    q_c = 0;
                    if (q_r == Br - 1) q_done = 1; else q_r++;
                end else q_c++;
            end else begin
                q_bits = 0; // Padding
            end

            // --- Determine K Data (Row-Major) ---
            if (!k_done) begin
                k_bits = $shortrealtobits(Kmat[k_r][k_c]);
                // Update Indices
                if (k_c == D - 1) begin
                    k_c = 0;
                    if (k_r == Bc - 1) k_done = 1; else k_r++;
                end else k_c++;
            end else begin
                k_bits = 0;
            end

            // --- Determine V Data (Column-Major) ---
            if (!v_done) begin
                v_bits = $shortrealtobits(Vmat[v_r][v_c]);
                // Update Indices
                if (v_r == Bc - 1) begin
                    v_r = 0;
                    if (v_c == D - 1) v_done = 1; else v_c++;
                end else v_r++;
            end else begin
                v_bits = 0;
            end

            // --- Pack 128-bit Data ---
            // Mapping: [127:96 Scale | 95:64 V | 63:32 K | 31:0 Q]
            s_axis_tdata = {scale_bits, v_bits, k_bits, q_bits};
            
            // Assert Valid
            s_axis_tvalid = 1;

            // Optional: Assert TLAST if this is the absolute last packet
            if (q_done && k_done && v_done) s_axis_tlast = 1; 

            // --- Wait for Clock and Ready ---
            do begin
                @(posedge ACLK);
                // If DUT is not ready (backpressure), hold valid and data
            end while (s_axis_tready == 0); 

            // Small hold time for waveform readability
            #1; 
        end

        // End of Stream
        s_axis_tvalid = 0;
        s_axis_tlast = 0;
        s_axis_tdata = 0;

        $display("AXI Stream Data Sent. Waiting for IRQ...");

        // --- 5. Wait for Result ---
        wait(done_irq);
        
        repeat(20) @(posedge ACLK);
        $display("Simulation Complete. Core finished.");
        $finish;
    end

endmodule
