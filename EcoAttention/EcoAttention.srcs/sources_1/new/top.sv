`timescale 1ns / 1ps
module top#(parameter DATA_WIDTH = 16)(
    input  logic                      clk,
    input  logic                      aVal, bVal, sReady,
    input  logic [DATA_WIDTH-1:0]     A, B,
    output logic [DATA_WIDTH-1:0]     S
);

    // pipeline registers (only those we actually use)
    logic                      aVal_reg, bVal_reg, sReady_reg;
    logic [DATA_WIDTH-1:0]     A_reg, B_reg;
    logic [DATA_WIDTH-1:0]     S_reg;

    // instantiate the HLS/AXI-Stream Adder IP
    ADDER your_instance_name (
      .aclk(clk),
      .s_axis_a_tvalid(aVal_reg),
      .s_axis_a_tready(s_axis_a_tready),
      .s_axis_a_tdata(A_reg),
      .s_axis_b_tvalid(bVal_reg),
      .s_axis_b_tready(s_axis_b_tready),
      .s_axis_b_tdata(B_reg),
      .m_axis_result_tvalid(m_axis_result_tvalid),
      .m_axis_result_tready(sReady_reg),
      .m_axis_result_tdata(S)
    );

    // registers with synchronous reset: register inputs before IP and result after IP
    always_ff @(posedge clk) begin

        A_reg       <= A;
        B_reg       <= B;
        aVal_reg    <= aVal;
        bVal_reg    <= bVal;
        sReady_reg  <= sReady;
        // register output from IP -> drive module output
    end

    // drive top-level output from registered result
    assign S = S_reg;

endmodule
