`timescale 1ns / 1ps

module tb_exp_fixed();

    // Parameters
    parameter int DATA_WIDTH = 16;
    
    // Testbench Signals
    logic aclk;
    logic s_axis_a_tvalid;
    logic s_axis_a_tready;
    logic [DATA_WIDTH-1:0] s_axis_a_tdata;
    logic m_axis_result_tvalid;
    logic m_axis_result_tready;
    logic [DATA_WIDTH-1:0] m_axis_result_tdata;

    // Instantiate the Unit Under Test (UUT)
    exp_fixed #(
        .DATA_WIDTH(DATA_WIDTH)
    ) uut (
        .aclk(aclk),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tdata(s_axis_a_tdata),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tdata(m_axis_result_tdata)
    );

    // Clock Generation (100 MHz)
    initial aclk = 0;
    always #5 aclk = ~aclk;

    // Test Procedure
    initial begin
        // Initialize signals
        s_axis_a_tvalid = 0;
        s_axis_a_tdata  = 0;
        m_axis_result_tready = 1; // Always ready to receive results

        // Wait for reset/stable state
        repeat(5) @(posedge aclk);

        // --- Test Case 1: exp(0) = 1.0 ---
        // FP16 for 0.0 is 16'h0000
        send_data(16'h0000);

        // --- Test Case 2: exp(0.5) ≈ 1.648 ---
        // FP16 for 0.5 is 16'h3800
        send_data(16'h3800);

        // --- Test Case 3: exp(1.0) ≈ 2.718 ---
        // FP16 for 1.0 is 16'h3C00
        send_data(16'h3C00);

        // Deassert valid and wait for pipeline to empty
        s_axis_a_tvalid = 0;
        repeat(10) @(posedge aclk);

        $display("Simulation Finished.");
        $finish;
    end

    // Task to handle AXI-Stream data transfer
    task send_data(input [15:0] data);
        begin
            s_axis_a_tvalid = 1;
            s_axis_a_tdata  = data;
            
            // Wait until ready is high (handshake)
            do begin
                @(posedge aclk);
            end while (!s_axis_a_tready);
            
            $display("[%0t] Sent Data: %h", $time, data);
        end
    endtask

    // Monitor Results
    always @(posedge aclk) begin
        if (m_axis_result_tvalid && m_axis_result_tready) begin
            $display("[%0t] RECEIVED RESULT: %h", $time, m_axis_result_tdata);
        end
    end

endmodule