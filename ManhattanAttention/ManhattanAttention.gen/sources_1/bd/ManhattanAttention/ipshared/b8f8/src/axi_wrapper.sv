`timescale 1ns / 1ps

module axis_wrapper #(
    parameter DATA_WIDTH = 32
)(
    input  logic axi_clk,
    input  logic axi_reset_n, // Active Low Reset

    // AXI-Stream Slave Interface (Input from DMA)
    // We use 128 bits to pack 3x32-bit values (Q, K, V) + 32-bit padding/scale
    input  logic [DATA_WIDTH*4-1:0] s_axis_data, 
    input  logic         s_axis_valid,
    input  logic         s_axis_tlast, // Optional: Marks end of packet
    output logic         s_axis_ready,

    // Interrupt/Status
    output logic m_axis_valid,
    output logic [DATA_WIDTH-1:0] m_axis_data,
    input logic         m_axis_ready,
    output  logic         m_axis_tlast
);

    // Internal Signals
    logic [DATA_WIDTH-1:0] qa, ka, va, scale;
    logic core_done;
    
    // Hardcoded scale for now, or extract from tdata if needed
    // Assuming Packet Format: [Pad/Scale |  V  |  K  |  Q ]
    //                        127:96   95:64 63:32 31:0
    
    assign qa    = s_axis_data[31:0];
    assign ka    = s_axis_data[63:32];
    assign va    = s_axis_data[95:64];
    assign scale = s_axis_data[127:96]; // Can use upper bits for scale

    // Flow Control
    // We are ready only if the core isn't resetting or busy (simplified here)
    assign s_axis_ready = 1'b1; 

    // Instantiate your original Top Module
    top #(
        .DATA_WIDTH(32), .Br(4), .Bc(4), .D(16)
    ) my_core (
        .clk(axi_clk),
        .reset(!axi_reset_n), // Invert for Active High
        .qa(qa),
        .ka(ka),
        .va(va),
        .scale(scale),
        .done(core_done)
    );

    // Latch done signal for the processor to see
//    always_ff @(posedge axi_clk or negedge axi_reset_n) begin
//        if (!axi_reset_n) 
//            done_irq <= 0;
//        else if (core_done) 
//            done_irq <= 1;
//    end

endmodule
