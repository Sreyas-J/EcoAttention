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
    // pack D lanes each DATA_WIDTH wide: [ DATA_WIDTH*D-1 : 0 ]
    logic [DATA_WIDTH*D-1:0] Qdin, Kdin;
    logic [DATA_WIDTH*Bc-1:0] Vdin;
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
        .Qdina(Qdin),
        .Kdina(Kdin),
        .Vdina(Vdin),
        .scale(scale),
        .done(done)
    );

    // Clock generation
    always #5 clk = ~clk;
   
    // Hardcoded floating-point matrices (shortreal)
    shortreal Qmat [0:Br-1][0:D-1];
    shortreal Kmat [0:Bc-1][0:D-1];
    shortreal Vmat [0:Bc-1][0:D-1];
    int col;

    initial begin
        clk = 0;
        reset = 1;
        Qdin = '0;
        Kdin = '0;
        Vdin = '0;
        scale = $shortrealtobits(0.25);

        // Fill Q/K/V matrices programmatically as before
        for (int i = 0; i < Br; i = i + 1) begin
            for (int j = 0; j < D; j = j + 1) begin
                Qmat[i][j] = shortreal'( i + j * 0.1 );
            end
        end

        for (int i = 0; i < Bc; i = i + 1) begin
            for (int j = 0; j < D; j = j + 1) begin
                Kmat[i][j] = shortreal'( i * 2 + j * 0.2 );
                Vmat[i][j] = shortreal'( i * 3 + j * 0.3 );
            end
        end

        // Release reset
        repeat (2) @(posedge clk);
        reset = 0;

        //
        // Combined simultaneous drive:
        // Each cycle (colIdx = 0..D-1) we drive:
        //   - Qdin := entire Q row q_row = colIdx % Br (D lanes)
        //   - Kdin := entire K row k_row = q_row (if k_row < Bc), else zeros
        //   - Vdin := column colIdx packed into Bc lanes (rows 0..Bc-1)
        //
        for (int colIdx = 0; colIdx < D; colIdx = colIdx + 1) begin
            int q_row;
            q_row = colIdx % Br;

            // default zeros
            Qdin = '0;
            Kdin = '0;
            Vdin = '0;

            // pack Q row (all D lanes)
            for (int k = 0; k < D; k = k + 1) begin
                Qdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = $shortrealtobits(Qmat[q_row][k]);
            end

            // pack K row if it exists (same q_row); otherwise leave K zero
            if (q_row < Bc) begin
                for (int k = 0; k < D; k = k + 1) begin
                    Kdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = $shortrealtobits(Kmat[q_row][k]);
                end
            end else begin
                // Kdin remains zero (already set)
            end

            // pack V column (rows 0..Bc-1 into the Bc lanes)
            for (int r = 0; r < Bc; r = r + 1) begin
                Vdin[(r+1)*DATA_WIDTH-1 -: DATA_WIDTH] = $shortrealtobits(Vmat[r][colIdx]);
            end

            // debug prints to confirm what is driven this cycle
            for (int r = 0; r < Bc; r = r + 1) begin
                $display("cycle %0d: V row %0d col %0d = %0f", colIdx, r, colIdx, Vmat[r][colIdx]);
            end
            $display("cycle %0d: Q row %0d driven", colIdx, q_row);

            // Drive DUT for one clock with all three buses valid
            @(posedge clk);
        end

        // Wait for DUT to signal done
        wait (done);
        $stop;
    end

endmodule