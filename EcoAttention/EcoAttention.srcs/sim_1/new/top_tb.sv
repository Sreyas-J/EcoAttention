`timescale 1ns/1ps

module tb_top;

    // Parameters
    localparam DATA_WIDTH = 32;
    localparam Br = 5; // Q rows
    localparam Bc = 5; // K/V rows
    localparam D  = 7; // embedding dim

    // Clock/Reset
    logic clk;
    logic reset;

    // DUT inputs/outputs
    logic [DATA_WIDTH-1:0] Qdin, Kdin, Vdin;
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

    // Hardcoded floating-point matrices
    shortreal Qmat [0:Br-1][0:D-1] = '{
        '{1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7},
        '{2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7},
        '{3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7},
        '{4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7},
        '{5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7}
    };

    shortreal Kmat [0:Bc-1][0:D-1] = '{
        '{1.01, 1.02, 1.03, 1.04, 1.05, 1.06, 1.07},
        '{2.01, 2.02, 2.03, 2.04, 2.05, 2.06, 2.07},
        '{3.01, 3.02, 3.03, 3.04, 3.05, 3.06, 3.07},
        '{4.01, 4.02, 4.03, 4.04, 4.05, 4.06, 4.07},
        '{5.01, 5.02, 5.03, 5.04, 5.05, 5.06, 5.07}
    };

    shortreal Vmat [0:Bc-1][0:D-1] = '{
        '{1.11, 1.12, 1.13, 1.14, 1.15, 1.16, 1.17},
        '{2.11, 2.12, 2.13, 2.14, 2.15, 2.16, 2.17},
        '{3.11, 3.12, 3.13, 3.14, 3.15, 3.16, 3.17},
        '{4.11, 4.12, 4.13, 4.14, 4.15, 4.16, 4.17},
        '{5.11, 5.12, 5.13, 5.14, 5.15, 5.16, 5.17}
    };

    initial begin
        clk = 0;
        reset = 1;
        Qdin = 0;
        Kdin = 0;
        Vdin = 0;

        // Print Q, K, V for debugging
//        $display("\nQ Matrix:");
//        foreach (Qmat[i]) begin
//            $write("[ ");
//            foreach (Qmat[i][j]) $write("%0.2f ", Qmat[i][j]);
//            $write("]\n");
//        end
//        $display("\nK Matrix:");
//        foreach (Kmat[i]) begin
//            $write("[ ");
//            foreach (Kmat[i][j]) $write("%0.2f ", Kmat[i][j]);
//            $write("]\n");
//        end
//        $display("\nV Matrix:");
//        foreach (Vmat[i]) begin
//            $write("[ ");
//            foreach (Vmat[i][j]) $write("%0.2f ", Vmat[i][j]);
//            $write("]\n");
//        end

        // Release reset
        repeat (2) @(posedge clk);
        reset = 0;
//        @(posedge clk);

        // Row-major parallel load
        for (int i = 0; i < Br; i++) begin
            for (int j = 0; j < D; j++) begin
                Qdin = $shortrealtobits(Qmat[i][j]);
                if (i < Bc) begin
                    Kdin = $shortrealtobits(Kmat[i][j]);
                    Vdin = $shortrealtobits(Vmat[i][j]);
                end else begin
                    Kdin = 0;
                    Vdin = 0;
                end
                @(posedge clk);
            end
        end

        $display("\nData load complete. Waiting for done...");
        wait (done);
        $display("Done at time %0t", $time);
        $stop;
    end

endmodule
