`timescale 1ns / 1ps

module tb_exp_fixed;

    // Parameters
    localparam int DATA_WIDTH = 16;
    localparam int EXP = 5;
    localparam int MANT = 11;
    localparam time CLK_PERIOD = 10; // 100 MHz

    // Signals
    logic aclk;
    logic s_axis_a_tvalid;
    logic s_axis_a_tready;
    logic [DATA_WIDTH-1:0] s_axis_a_tdata;
    
    logic m_axis_result_tvalid;
    logic m_axis_result_tready;
    logic [DATA_WIDTH-1:0] m_axis_result_tdata;

    // ---------------------------------------------------------
    // Instantiate the DUT (Design Under Test)
    // ---------------------------------------------------------
    exp_fixed #(
        .DATA_WIDTH(DATA_WIDTH),
        .EXP(EXP),
        .MANT(MANT)
    ) dut (
        .aclk(aclk),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tdata(s_axis_a_tdata),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tdata(m_axis_result_tdata)
    );

    // ---------------------------------------------------------
    // Clock Generation
    // ---------------------------------------------------------
    initial begin
        aclk = 0;
        forever #(CLK_PERIOD/2) aclk = ~aclk;
    end

    // ---------------------------------------------------------
    // Simulation Logic
    // ---------------------------------------------------------
    initial begin
        // 1. Initialize Inputs
        s_axis_a_tvalid = 0;
        s_axis_a_tdata = 0;
        m_axis_result_tready = 0; // Downstream is initially not ready

        // Wait for global reset or startup
        repeat(10) @(posedge aclk);
        
        $display("Starting Simulation...");

        // 2. Enable downstream receiver
        m_axis_result_tready = 1;

        // 3. Send Data 1: Input 0 (exp(0) should be 1.0)
        // Assuming Q5.11 format: 1.0 = 1 << 11 = 2048 ('h0800)
//        send_data(16'h0000); 

        // 4. Send Data 2: Input 1.0 ('h0800 in Q5.11)
        send_data(16'h3f80);

        // 5. Send Data 3: Small value 0.5 ('h0400)
        send_data(16'h3f00);

        // Wait for pipeline to flush
        repeat(20) @(posedge aclk);
        
        $display("Simulation Finished.");
        $finish;
    end

    // ---------------------------------------------------------
    // Task to drive AXI Stream Input
    // ---------------------------------------------------------
    task send_data(input [DATA_WIDTH-1:0] data_in);
        begin
            @(posedge aclk);
            s_axis_a_tvalid = 1;
            s_axis_a_tdata  = data_in;
            
            // Wait for the DUT to accept the data (handshake)
            // Note: In your code, ready depends on internal pipeline, 
            // so we must wait until s_axis_a_tready is high.
            wait(s_axis_a_tready);
            
            @(posedge aclk);
            s_axis_a_tvalid = 0;
        end
    endtask

endmodule