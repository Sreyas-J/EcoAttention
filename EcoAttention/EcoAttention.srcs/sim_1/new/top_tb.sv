`timescale 1ns/1ps

module tb_top;

    // Parameters
    localparam int DATA_WIDTH = 32;
    localparam int Br = 4; // Q rows
    localparam int Bc = 4; // K/V rows
    localparam int D  = 16; // embedding dim

    // Clock/Reset
    logic clk;
    logic reset;

    // DUT inputs/outputs
    logic [DATA_WIDTH-1:0] Qdin, Kdin;
    logic [DATA_WIDTH-1:0] Vdin;
    logic [DATA_WIDTH-1:0] scale;
    logic done;

    // Instantiate DUT
    top #(
        .DATA_WIDTH(DATA_WIDTH),
        .Br(Br),
        .Bc(Bc),
        .D(D)
    ) dut (
        .clk(clk),
        .reset(reset),
        .qa(Qdin),
        .ka(Kdin),
        .va(Vdin),
        .scale(scale),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;
   
    // Hardcoded floating-point matrices (shortreal)
    shortreal Qmat [0:Br-1][0:D-1];
    shortreal Kmat [0:Bc-1][0:D-1];
    shortreal Vmat [0:Bc-1][0:D-1];

    // Iterators for traversing matrices
    int q_r, q_c; // Q row/col indices
    int k_r, k_c; // K row/col indices
    int v_r, v_c; // V row/col indices

    // Flags to track if traversal is complete
    bit q_done, k_done, v_done;

    initial begin
        // 1. Initialization
        clk = 0;
        reset = 1;
        Qdin = '0;
        Kdin = '0;
        Vdin = '0;
        scale = $shortrealtobits(0.25);
        
        q_r = 0; q_c = 0;
        k_r = 0; k_c = 0;
        v_r = 0; v_c = 0;
        
        q_done = 0; k_done = 0; v_done = 0;

        // 2. Fill Q/K/V matrices programmatically
        for (int i = 0; i < Br; i++) begin
            for (int j = 0; j < D; j++) begin
                Qmat[i][j] = shortreal'( i + j * 0.1 );
            end
        end

        for (int i = 0; i < Bc; i++) begin
            for (int j = 0; j < D; j++) begin
                Kmat[i][j] = shortreal'( i * 2 + j * 0.2 );
                Vmat[i][j] = shortreal'( i * 3 + j * 0.3 );
            end
        end

        // 3. Reset Sequence
        repeat (2) @(posedge clk);
        #1 reset = 0; // Release reset slightly after edge

        // 4. Drive Data Loop
        // Run until all matrices have been fully traversed
        while (!q_done || !k_done || !v_done) begin
            
            // --- Drive Q (Row-wise) ---
            if (!q_done) begin
                Qdin = $shortrealtobits(Qmat[q_r][q_c]);
                // Increment Col, then Row
                if (q_c == D - 1) begin
                    q_c = 0;
                    if (q_r == Br - 1) q_done = 1;
                    else q_r++;
                end else begin
                    q_c++;
                end
            end else begin
                Qdin = '0; // Pad with 0 once done
            end

            // --- Drive K (Row-wise) ---
            if (!k_done) begin
                Kdin = $shortrealtobits(Kmat[k_r][k_c]);
                // Increment Col, then Row
                if (k_c == D - 1) begin
                    k_c = 0;
                    if (k_r == Bc - 1) k_done = 1;
                    else k_r++;
                end else begin
                    k_c++;
                end
            end else begin
                Kdin = '0;
            end

            // --- Drive V (Column-wise) ---
            // Traverse down rows (v_r), then across columns (v_c)
            if (!v_done) begin
                Vdin = $shortrealtobits(Vmat[v_r][v_c]);
                // Increment Row, then Col
                if (v_r == Bc - 1) begin
                    v_r = 0;
                    if (v_c == D - 1) v_done = 1;
                    else v_c++;
                end else begin
                    v_r++;
                end
            end else begin
                Vdin = '0;
            end

            // Wait for next clock cycle
            @(posedge clk);
            #1; // Small hold delay so inputs change after posedge
        end

        // Ensure inputs are cleared after transmission
        Qdin = '0; Kdin = '0; Vdin = '0;

        // 5. Wait for DUT to signal done
        wait (done);
        repeat(5) @(posedge clk); // Extract margin
        $stop;
    end

endmodule