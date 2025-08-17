`timescale 1ns / 1ps
module top#(
    parameter DATA_WIDTH = 32,
    parameter Bc= 5, //Q: BrxD , K: BcxD, V: BcxD, 0:BrxBc
    parameter Br= 5,
    parameter D = 7
)(
    input logic clk,reset,
    input logic [DATA_WIDTH-1:0] Qdina,Qdinb,Kdina,Kdinb,Vdina,Vdinb,
    output logic done
);
    localparam int MAX_VAL = (Bc > Br) ? Bc*D : Br*D;
    localparam int Q_size = Br*D;
    localparam int K_size = Bc*D;
    localparam int V_size = Bc*D;
    
    logic addAval1,addAval2,addAready1,addAready2,addBval1,addBval2,addBready1,addBready2,sumVal1,sumVal2,sumReady1,sumReady2,divisorVal,divisorReady,dividendVal,dividendReady,qVal,qReady,eVal,eReady,xVal,xReady,greatVal,greatReady,lessVal,lessReady,compReady,compVal,mulAval,mulAready,mulBval,mulBready,prodVal,prodReady,Qena,Qwea,Qenb,Qweb,Kena,Kwea,Kenb,Kweb,Vena,Vwea,Venb,Vweb,Oen,Owe;
    logic [DATA_WIDTH-1:0] addA1,addA2,addB1,addB2,sum1,sum2,dividend,divisor,q,x,less,great,comp,mulA,mulB,prod,Qdouta,Qdoutb,Kdouta,Kdoutb,Vdouta,Vdoutb,Odin,Odout;
    logic [$clog2(MAX_VAL)-1:0] Qaddra,Qaddrb,Kaddra,Kaddrb,Vaddra,Vaddrb;
    logic [$clog2(MAX_VAL):0] cnt;
//    logic [$clog2(Br)-1:0] I;
//    logic [$clog2(Bc)-1:0] J;
    
    logic we,loadFlg;
    logic [1:0] diffFlg,SsumFlg;
    
    // instantiate the HLS/AXI-Stream Adder IP
    ADDER add1 (
      .aclk(clk),
      .s_axis_a_tvalid(addAval1),
      .s_axis_a_tready(addAready1),
      .s_axis_a_tdata(addA1),
      .s_axis_b_tvalid(addBval1),
      .s_axis_b_tready(addBready1),
      .s_axis_b_tdata(addB1),
      .m_axis_result_tvalid(sumVal1),
      .m_axis_result_tready(sumReady1),
      .m_axis_result_tdata(sum1)
    );
    
    ADDER add2 (
      .aclk(clk),
      .s_axis_a_tvalid(addAval2),
      .s_axis_a_tready(addAready2),
      .s_axis_a_tdata(addA2),
      .s_axis_b_tvalid(addBval2),
      .s_axis_b_tready(addBready2),
      .s_axis_b_tdata(addB2),
      .m_axis_result_tvalid(sumVal2),
      .m_axis_result_tready(sumReady2),
      .m_axis_result_tdata(sum2)
    );
    
    DIV div (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(dividendVal),            // input wire s_axis_a_tvalid
      .s_axis_a_tready(dividendReady),            // output wire s_axis_a_tready
      .s_axis_a_tdata(dividend),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(divisorVal),            // input wire s_axis_b_tvalid
      .s_axis_b_tready(divisorReady),            // output wire s_axis_b_tready
      .s_axis_b_tdata(divisor),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(qVal),  // output wire m_axis_result_tvalid
      .m_axis_result_tready(qReady),  // input wire m_axis_result_tready
      .m_axis_result_tdata(q)    // output wire [31 : 0] m_axis_result_tdata
    );
    
    EXP exp (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(eVal),            // input wire s_axis_a_tvalid
      .s_axis_a_tready(eReady),            // output wire s_axis_a_tready
      .s_axis_a_tdata($shortrealtobits(2.71828)),              // input wire [31 : 0] s_axis_a_tdata
      .m_axis_result_tvalid(xVal),  // output wire m_axis_result_tvalid
      .m_axis_result_tready(xReady),  // input wire m_axis_result_tready
      .m_axis_result_tdata(x)    // output wire [31 : 0] m_axis_result_tdata
    );
    
    GREATERthan greater (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(greatVal),            // input wire s_axis_a_tvalid
      .s_axis_a_tready(greatReady),            // output wire s_axis_a_tready
      .s_axis_a_tdata(great),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(lessVal),            // input wire s_axis_b_tvalid
      .s_axis_b_tready(lessReady),            // output wire s_axis_b_tready
      .s_axis_b_tdata(less),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(compVal),  // output wire m_axis_result_tvalid
      .m_axis_result_tready(compReady),  // input wire m_axis_result_tready
      .m_axis_result_tdata(comp)    // output wire [7 : 0] m_axis_result_tdata
    );

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
                if((Qaddra<Br || Kaddra<Bc) && diffFlg==0) diffFlg[0]<=1;
                if(Qaddra<Q_size-1) Qaddra<=Qaddra+1;
                if(Kaddra<K_size-1) begin
                    Kaddra<=Kaddra+1;
                    Vaddra<=Vaddra+1;
                end

                if(Qaddra>Q_size && Kaddra>K_size) begin
                    loadFlg<=1'b0;
                    cnt   <= 0;
                end
            end
            
            if(diffFlg[1]==1)begin
                if(SsumFlg==0)begin
                    if(cnt==1)begin
                        SsumFlg<=1'b1;
                        cnt<=0;
                    end
                    else cnt<=cnt+1;
                end
                
                addA1<=Qdoutb;
                addB1<={~Kdoutb[DATA_WIDTH-1],Kdoutb[DATA_WIDTH-2:0]};
            end
            else begin
                if(cnt==2)begin
                    diffFlg[1]=1;
                    cnt<=0;
                end
                else cnt<=cnt+1;
            end
            
            if(diffFlg[0]==1)begin
                Qaddrb<=Qaddrb+1;
                Kaddrb<=Kaddrb+1;
                if(Qaddrb>=Br && Kaddrb>=Bc) diffFlg[0]=0;
            end
            
            if(SsumFlg==2)begin
                addA2<=sum1;
                addB2<=sum2;
                
                cnt<=1-cnt;
            end
            else if(SsumFlg==1)begin
                addA2<=sum1;
                addB2<=0;
                SsumFlg<=2;
            end
//            endcase
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
//        cmplt=Qaddra<Br || Kaddra<Bc;
        
        //Condn will be updated
        if(diffFlg[1]==1)begin
            addAval1=1'b1;
            addBval1=1'b1;
            sumReady1=1'b1;
        end
        else begin
            addAval1=1'b0;
            addBval1=1'b0;
            sumReady1=1'b0;
        end
        
        //Condn will be updated
        if(SsumFlg)begin
            addAval2=1'b1;
            addBval2=1'b1;
            sumReady2=1'b1;
        end
        else begin
            addAval2=1'b0;
            addBval2=1'b0;
            sumReady2=1'b0;
        end
        
    end

endmodule
