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
    logic [DATA_WIDTH*D-1:0] Qdin, Kdin, Vdin;
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

        // Row-major **parallel** load: send up to D lanes per cycle
        for (int i = 0; i < Br; i = i + 1) begin
            for (int j = 0; j < D; j = j + D) begin
                // default to zero each cycle
                Qdin = '0;
                Kdin = '0;
                Vdin = '0;

                // pack up to D lanes
                for (int k = 0; k < D; k = k + 1) begin
                    col = j + k;
                    if (col < D) begin
                        // pack lane k: the top index for lane k is (k+1)*DATA_WIDTH-1
                        Qdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = $shortrealtobits(Qmat[i][col]);
                        if (i < Bc) begin
                            Kdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = $shortrealtobits(Kmat[i][col]);
                            Vdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = $shortrealtobits(Vmat[i][col]);
                        end
                    end else begin
                        // col >= D -> leave lane zero (padding)
                        Qdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = '0;
                        Kdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = '0;
                        Vdin[(k+1)*DATA_WIDTH-1 -: DATA_WIDTH] = '0;
                    end
                end

                // Drive DUT for one clock with packed lanes
                @(posedge clk);
            end
        end

//        $display("\nData load complete. Waiting for done...");
        wait (done);
//        $display("Done at time %0t", $time);
        $stop;
    end

endmodule
