`timescale 1ns / 1ps
module top#(
    parameter DATA_WIDTH = 16,
    parameter Bc= 4, //Q: BrxD , K: BcxD, V: BcxD, 0:BrxBc
    parameter Br= 4,
    parameter D = 32
)(
    input logic clk,reset,
    input logic [DATA_WIDTH*D-1:0] Qdina,Qdinb,Kdina,Kdinb,Vdina,Vdinb,
    output logic done
);
    localparam int MAX_VAL = (Bc > Br) ? Bc*D : Br*D;
    localparam int Q_size = Br*D;
    localparam int K_size = Bc*D;
    localparam int V_size = Bc*D;
    
    localparam int ADDS=16;
    localparam int DIVS=2;
    localparam int EXPS=4;
    localparam int COMPS=16;
    localparam int MULS=8;    
    
    logic addVal[0:ADDS-1],addReady[0:ADDS-1],mulVal[0:MULS-1],mulReady[0:MULS-1],Qena,Qwea,Qenb,Qweb,Kena,Kwea,Kenb,Kweb,Vena,Vwea,Venb,Vweb,Oen,Owe;
    logic [DATA_WIDTH-1:0] addA[0:ADDS-1],addB[0:ADDS-1],sum[0:ADDS-1],mulA[0:MULS-1],mulB[0:MULS-1],prod[0:MULS-1];
    logic [DATA_WIDTH*D-1:0] Qdouta,Qdoutb,Kdouta,Kdoutb,Vdouta,Vdoutb,Odin,Odout;
    logic [$clog2(Br)-1:0] Qaddra,Qaddrb;
    logic [$clog2(Bc)-1:0] Kaddra,Kaddrb,Vaddra,Vaddrb;

    logic [$clog2(MAX_VAL):0] cnt;
//    logic [$clog2(Br)-1:0] I;
//    logic [$clog2(Bc)-1:0] J;
    
    logic we,loadFlg;
    logic [1:0] diffFlg,SsumFlg;
    
    // instantiate the HLS/AXI-Stream Adder IP
    genvar i;
    generate
        for (i = 0; i < ADDS; i = i + 1) begin : gen_adders
            // Instance name will be gen_adders[i].add_inst
            ADDER add_inst (
              .aclk(clk),
              .s_axis_a_tvalid(addVal[i]),
              .s_axis_a_tready(s_axis_a_tready),
              .s_axis_a_tdata(addA[i]),
              .s_axis_b_tvalid(addVal[i]),
              .s_axis_b_tready(s_axis_b_tready),
              .s_axis_b_tdata(addB[i]),
              .m_axis_result_tvalid(m_axis_result_tvalid),
              .m_axis_result_tready(addReady[i]),
              .m_axis_result_tdata(sum[i])
            );        
        end
    endgenerate
    
//    DIV div (
//      .aclk(clk),                                  // input wire aclk
//      .s_axis_a_tvalid(dividendVal),            // input wire s_axis_a_tvalid
//      .s_axis_a_tready(dividendReady),            // output wire s_axis_a_tready
//      .s_axis_a_tdata(dividend),              // input wire [31 : 0] s_axis_a_tdata
//      .s_axis_b_tvalid(divisorVal),            // input wire s_axis_b_tvalid
//      .s_axis_b_tready(divisorReady),            // output wire s_axis_b_tready
//      .s_axis_b_tdata(divisor),              // input wire [31 : 0] s_axis_b_tdata
//      .m_axis_result_tvalid(qVal),  // output wire m_axis_result_tvalid
//      .m_axis_result_tready(qReady),  // input wire m_axis_result_tready
//      .m_axis_result_tdata(q)    // output wire [31 : 0] m_axis_result_tdata
//    );
    
//    EXP exp (
//      .aclk(clk),                                  // input wire aclk
//      .s_axis_a_tvalid(eVal),            // input wire s_axis_a_tvalid
//      .s_axis_a_tready(eReady),            // output wire s_axis_a_tready
//      .s_axis_a_tdata($shortrealtobits(2.71828)),              // input wire [31 : 0] s_axis_a_tdata
//      .m_axis_result_tvalid(xVal),  // output wire m_axis_result_tvalid
//      .m_axis_result_tready(xReady),  // input wire m_axis_result_tready
//      .m_axis_result_tdata(x)    // output wire [31 : 0] m_axis_result_tdata
//    );
    
//    GREATERthan greater (
//      .aclk(clk),                                  // input wire aclk
//      .s_axis_a_tvalid(greatVal),            // input wire s_axis_a_tvalid
//      .s_axis_a_tready(greatReady),            // output wire s_axis_a_tready
//      .s_axis_a_tdata(great),              // input wire [31 : 0] s_axis_a_tdata
//      .s_axis_b_tvalid(lessVal),            // input wire s_axis_b_tvalid
//      .s_axis_b_tready(lessReady),            // output wire s_axis_b_tready
//      .s_axis_b_tdata(less),              // input wire [31 : 0] s_axis_b_tdata
//      .m_axis_result_tvalid(compVal),  // output wire m_axis_result_tvalid
//      .m_axis_result_tready(compReady),  // input wire m_axis_result_tready
//      .m_axis_result_tdata(comp)    // output wire [7 : 0] m_axis_result_tdata
//    );

    generate
        for (i = 0; i < ADDS; i = i + 1) begin : gen_muls
            MUL mul (
              .aclk(clk),                                  // input wire aclk
              .s_axis_a_tvalid(mulAval),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(mulAready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(mulA),              // input wire [31 : 0] s_axis_a_tdata
              .s_axis_b_tvalid(mulBval),            // input wire s_axis_b_tvalid
              .s_axis_b_tready(mulBready),            // output wire s_axis_b_tready
              .s_axis_b_tdata(mulB),              // input wire [31 : 0] s_axis_b_tdata
              .m_axis_result_tvalid(prodVal),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(prodReady),  // input wire m_axis_result_tready
              .m_axis_result_tdata(prod)    // output wire [31 : 0] m_axis_result_tdata
            );
        end
    endgenerate
    
    Q BRAMq (
      .clka(clk),    // input wire clka
      .ena(Qena),      // input wire ena
      .wea(Qwea),      // input wire [0 : 0] wea
      .addra(Qaddra),  // input wire [5 : 0] addra
      .dina(Qdina),    // input wire [31 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(Qenb),      // input wire enb
      .addrb(Qaddrb),  // input wire [5 : 0] addrb
      .doutb(Qdoutb)  // output wire [31 : 0] douta
    );
    
    K BRAMk (
      .clka(clk),    // input wire clka
      .ena(Kena),      // input wire ena
      .wea(Kwea),      // input wire [0 : 0] wea
      .addra(Kaddra),  // input wire [5 : 0] addra
      .dina(Kdina),    // input wire [31 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(Kenb),      // input wire enb
      .addrb(Kaddrb),  // input wire [5 : 0] addrb
      .doutb(Kdoutb) // output wire [31 : 0] douta
    );
    
    K BRAMv (
      .clka(clk),    // input wire clka
      .ena(Vena),      // input wire ena
      .wea(Vwea),      // input wire [0 : 0] wea
      .addra(Vaddra),  // input wire [5 : 0] addra
      .dina(Vdina),    // input wire [31 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(Venb),      // input wire enb
      .addrb(Vaddrb),  // input wire [5 : 0] addrb
      .doutb(Vdoutb)  // output wire [31 : 0] douta
    );
    
    O BRAMo (
      .clka(clk),    // input wire clka
      .ena(Oen),      // input wire ena
      .wea(Owe),      // input wire [0 : 0] wea
      .addra(Oaddr),  // input wire [5 : 0] addra
      .dina(Odin),    // input wire [31 : 0] dina
      .douta(Odout)  // output wire [31 : 0] douta
    );
    
//    typedef enum logic [2:0]{
//        OFF = 3'd0,
//        LOAD = 3'd1,
//        DIFF = 3'd2
//        Q1 = 3'd3,
//        Rcalc = 3'd4,
//        Qn = 3'd5,
//        Rd = 3'd6,
//        Qcalc = 3'd7
//    } FSMstates;
    
//    FSMstates fsm;
    
    
    always_ff@(posedge clk)begin
        if(reset)begin
//            fsm<=LOAD;
            loadFlg<=1'b1;
            diffFlg<=1'b0;
            SsumFlg<=0;
            done<=1'b0;
            cnt<=0;
            Kaddra<=0;
            Kaddrb<=0;
            Qaddra<=0;
            Qaddrb<=0;
            Vaddra<=0;
        end
        else if(~done)begin

            if(loadFlg)begin
//                if((Qaddra<Br || Kaddra<Bc) && diffFlg==0) diffFlg[0]<=1;
                if(Qaddra<Br-1) Qaddra<=Qaddra+1;
                if(Bc<K_size-1) begin
                    Kaddra<=Kaddra+1;
                    Vaddra<=Vaddra+1;
                end

                if(Qaddra>Br && Kaddra>Bc) begin
                    loadFlg<=1'b0;
                    cnt   <= 0;
                end
            end
        end
    end
    
    
    always_comb begin
        Qena=1;
        Qenb=1;
        Kena=1;
        Kenb=1;
        Vena=1;
        Venb=1;
        Oen=1;
        we=(loadFlg)?1'b1:1'b0;
        Qwea=we; 
        Qweb=1'b0;
        Kwea=we;
        Kweb=1'b0;
        Vwea=we;
        Vweb=1'b0;
        
    end

endmodule
