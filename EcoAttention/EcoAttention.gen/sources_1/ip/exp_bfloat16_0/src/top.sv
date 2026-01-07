`timescale 1ns / 1ps

module exp_fixed #(
    parameter int DATA_WIDTH = 16,
    parameter int EXP = 5,
    parameter int MANT = 11
)(
    input logic aclk,                                  // input wire aclk
    input logic s_axis_a_tvalid,            // input wire s_axis_a_tvalid
    output logic s_axis_a_tready,            // output wire s_axis_a_tready
    input logic [DATA_WIDTH-1:0] s_axis_a_tdata,              // input wire [31 : 0] s_axis_a_tdata
    output logic m_axis_result_tvalid,  // output wire m_axis_result_tvalid
    input logic m_axis_result_tready,  // input wire m_axis_result_tready
    output logic [DATA_WIDTH-1:0] m_axis_result_tdata    // output wire [31 : 0] m_axis_result_tdata
);  
    
    logic val[0:3];
    logic [DATA_WIDTH-1:0] macA[0:3],macB[0:3],macC[0:3],macRes[0:3],mulA[0:3],mulB[0:3],prod[0:3];
//    logic valid;
    
    localparam [DATA_WIDTH-1:0] COEFFS [0:5]={'h3e2b,'h3e4d,'h3e80,'h3eab,'h3f00,'h3f80}; //1/6,1/5,...,1
    
    genvar i;
    generate
        for(i=0;i<4;i++)begin
            MAC mac (
              .aclk(aclk),                                  // input wire aclk
              .s_axis_a_tvalid(val[i]),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(ready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(macA[i]),              // input wire [15 : 0] s_axis_a_tdata
              .s_axis_b_tvalid(val[i]),            // input wire s_axis_b_tvalid
              .s_axis_b_tready(ready),            // output wire s_axis_b_tready
              .s_axis_b_tdata(macB[i]),              // input wire [15 : 0] s_axis_b_tdata
              .s_axis_c_tvalid(val[i]),         // input wire s_axis_c_tvalid
              .s_axis_c_tready(ready),            // output wire s_axis_c_tready
              .s_axis_c_tdata(macC[i]),              // input wire [15 : 0] s_axis_c_tdata
              .m_axis_result_tvalid(ready),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(val[i]),  // input wire m_axis_result_tready
              .m_axis_result_tdata(macRes[i])    // output wire [15 : 0] m_axis_result_tdata
            );
            
            MUL mul (
              .aclk(aclk),                                  // input wire aclk
              .s_axis_a_tvalid(val[i]),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(ready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(mulA[i]),              // input wire [15 : 0] s_axis_a_tdata
              .s_axis_b_tvalid(val[i]),            // input wire s_axis_b_tvalid
              .s_axis_b_tready(ready),            // output wire s_axis_b_tready
              .s_axis_b_tdata(mulB[i]),              // input wire [15 : 0] s_axis_b_tdata
              .m_axis_result_tvalid(ready),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(val[i]),  // input wire m_axis_result_tready
              .m_axis_result_tdata(prod[i])    // output wire [15 : 0] m_axis_result_tdata
            );
        end
    endgenerate 
    
    always_ff@(posedge aclk)begin
        for(int i=1;i<4;i++) val[i]<=val[i-1];
        
        val[0]<=s_axis_a_tvalid;      
        
        if(m_axis_result_tready) m_axis_result_tvalid<=val[3];
    end
    
    always_comb begin
        s_axis_a_tready=val[0];
        m_axis_result_tdata=macRes[3];        
        
        for(int i=1;i<4;i++)begin
            if(val[i])begin
                macA[i]=prod[i-1];
                macB[i]=macRes[i-1];
                macC[i]=COEFFS[$size(COEFFS)-1];    //1
                
                mulA[i]=COEFFS[i+1];
                mulB[i]=mulB[i-1];
            end
            
        end
        
        if(val[0])begin
            macA[0]=COEFFS[0];
            macB[0]=s_axis_a_tdata;
            macC[0]=COEFFS[$size(COEFFS)-1];    //1

            mulA[0]=COEFFS[1];
            mulB[0]=s_axis_a_tdata;
        end
    end
endmodule