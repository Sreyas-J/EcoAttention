`timescale 1ns / 1ps

//module exp_fixed #(
//    parameter int DATA_WIDTH = 16,
//    parameter int EXP = 5,
//    parameter int MANT = 11
//)(
//    input logic aclk,                                  // input wire aclk
//    input logic s_axis_a_tvalid,            // input wire s_axis_a_tvalid
//    output logic s_axis_a_tready,            // output wire s_axis_a_tready
//    input logic [DATA_WIDTH-1:0] s_axis_a_tdata,              // input wire [31 : 0] s_axis_a_tdata
//    output logic m_axis_result_tvalid,  // output wire m_axis_result_tvalid
//    input logic m_axis_result_tready,  // input wire m_axis_result_tready
//    output logic [DATA_WIDTH-1:0] m_axis_result_tdata    // output wire [31 : 0] m_axis_result_tdata
//);
//    localparam [DATA_WIDTH-1:0] expIntermediate='b0011110111000101;
    
//    logic [DATA_WIDTH-1:0] prod,powInt;
//    logic mulReady;
    
//    MUL mul (
//      .aclk(aclk),                                  // input wire aclk
//      .s_axis_a_tvalid(s_axis_a_tvalid),            // input wire s_axis_a_tvalid
//      .s_axis_a_tready(ready),            // output wire s_axis_a_tready
//      .s_axis_a_tdata(expIntermediate),              // input wire [15 : 0] s_axis_a_tdata
//      .s_axis_b_tvalid(s_axis_a_tvalid),            // input wire s_axis_b_tvalid
//      .s_axis_b_tready(s_axis_b_tready),            // output wire s_axis_b_tready
//      .s_axis_b_tdata(s_axis_a_tdata),              // input wire [15 : 0] s_axis_b_tdata
//      .m_axis_result_tvalid(mulReady),  // output wire m_axis_result_tvalid
//      .m_axis_result_tready(s_axis_a_tvalid),  // input wire m_axis_result_tready
//      .m_axis_result_tdata(prod)    // output wire [15 : 0] m_axis_result_tdata
//    );
    
//    always_ff@(posedge aclk)begin
//        powInt<=1<<prod[DATA_WIDTH-2-:EXP];
//    end
    
//endmodule


module exp_fixed #(
    parameter int DATA_WIDTH = 16,
    parameter int EXP = 5,
    parameter int MANT = 11,
    
    parameter logic [DATA_WIDTH-1:0] COEFFS [0:4]={'b0010100101010101,'b0011000101010101,'b0011100000000000,'b0011110000000000,'b0011110000000000}  //1/24,1/6,1/2,1,1
)(
    input logic aclk,                                  // input wire aclk
    input logic s_axis_a_tvalid,            // input wire s_axis_a_tvalid
    output logic s_axis_a_tready,            // output wire s_axis_a_tready
    input logic [DATA_WIDTH-1:0] s_axis_a_tdata,              // input wire [31 : 0] s_axis_a_tdata
    output logic m_axis_result_tvalid,  // output wire m_axis_result_tvalid
    input logic m_axis_result_tready,  // input wire m_axis_result_tready
    output logic [DATA_WIDTH-1:0] m_axis_result_tdata    // output wire [31 : 0] m_axis_result_tdata
);

    logic [DATA_WIDTH-1:0] macA[0:3],macB[0:3],macC[0:3],res[0:3];
    logic macReady[0:3];
    logic [3:0] val,valIntermediate;
    
    genvar i;
    generate 
        for(i=0;i<4;i++)begin : gen_macs
            MAC mac (
              .aclk(aclk),                                  // input wire aclk
              .s_axis_a_tvalid(val[i]),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(ready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(macA[i]),              // input wire [15 : 0] s_axis_a_tdata
              .s_axis_b_tvalid(val[i]),            // input wire s_axis_b_tvalid
              .s_axis_b_tready(ready),            // output wire s_axis_b_tready
              .s_axis_b_tdata(macB[i]),              // input wire [15 : 0] s_axis_b_tdata
              .s_axis_c_tvalid(val[i]),            // input wire s_axis_c_tvalid
              .s_axis_c_tready(ready),            // output wire s_axis_c_tready
              .s_axis_c_tdata(macC[i]),              // input wire [15 : 0] s_axis_c_tdata
              .m_axis_result_tvalid(macReady[i]),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(val[i]),  // input wire m_axis_result_tready
              .m_axis_result_tdata(res[i])    // output wire [15 : 0] m_axis_result_tdata
            );
        end
    endgenerate
    
    always_ff@(posedge aclk)begin
        
        if(val==0) val<=0;
        else begin
            valIntermediate<=val<<1;
//            val[3:1]<=valIntermediate[3:1];
        end 
       
    end
    
    always_comb begin
        m_axis_result_tdata=res[3];
        val[0]=s_axis_a_tvalid;
        val[3:1]=valIntermediate[3:1];
        m_axis_result_tvalid=val[3];
        s_axis_a_tready=val[1];
        
        if(val[0])begin
            macA[0]=s_axis_a_tdata;
            macB[0]=COEFFS[0];
            macC[0]=COEFFS[1];
        end
        
        for(int i=1;i<4;i++)begin
            if(val[i])begin
                macA[i]=macA[i-1];
                macB[i]=res[i-1];
                macC[i]=COEFFS[i+1];
            end
        end
    end
    
endmodule