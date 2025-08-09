module tb_top;
    parameter DATA_WIDTH = 16;
    // DUT ports
    logic                      clk;
    logic                      aVal, bVal, sReady;
    logic [DATA_WIDTH-1:0]     A, B;
    logic [DATA_WIDTH-1:0]     S;

    // instantiate DUT
    top #(.DATA_WIDTH(DATA_WIDTH)) dut (
        .clk(clk),
        .aVal(aVal),
        .bVal(bVal),
        .sReady(sReady),
        .A(A),
        .B(B),
        .S(S)
    );

    // Clock: 10 ns period (100 MHz)
    initial clk = 0;
    always #5 clk = ~clk;

    // stimulus
    initial begin
        // init
        aVal   = 0;
        bVal   = 0;
        sReady = 0;
        A      = '0;
        B      = '0;

        // wait a bit for stable startup
        repeat (5) @(posedge clk);

        // Accept results from the start
        sReady = 1;

        // Transaction 1: 1 + 2
        A = 16'h3f80;
        B = 16'h4000;
        aVal = 1;
        bVal = 1;
        @(posedge clk);
        // assert valids for one cycle (simple TB). IP registers in top will capture.
        aVal = 0;
        bVal = 0;

        // wait for result to propagate and be visible
        repeat (4) @(posedge clk);

        // Transaction 2: 100 + 200
        A = 16'hbf80;
        B = 16'h42c8;
        aVal = 1;
        bVal = 1;
        @(posedge clk);
        aVal = 0;
        bVal = 0;
        repeat (4) @(posedge clk);

        // Transaction 3: max values
        A = 16'h428c;
        B = 16'hc1a0;
        aVal = 1;
        bVal = 1;
        @(posedge clk);
        aVal = 0;
        bVal = 0;
        repeat (6) @(posedge clk);

        // finish
        #5 $finish;
    end

endmodule