`timescale 1ns / 1ps
module top#(
    parameter DATA_WIDTH = 32,
    parameter Bc= 5, //Q: BrxD , K: BcxD, V: BcxD, 0:BrxBc
    parameter Br= 5,
    parameter D = 7
)(
    input logic clk,reset,
    input logic [DATA_WIDTH-1:0] Qdin,Kdin,Vdin,
    output logic done
);
    localparam int MAX_VAL = (Bc*D > Br*D) ? Bc*D : Br*D;
    localparam int Q_size = Br*D;
    localparam int K_size = Bc*D;
    localparam int V_size = Bc*D;
    
    logic addAval,addAready,addBval,addBready,sumVal,sumReadydivisorVal,divisorReady,dividendVal,dividendReady,qVal,qReady,eVal,eReady,xVal,xReady,greatVal,greatReady,lessVal,lessReady,compReady,compVal,mulAval,mulAready,mulBval,mulBready,prodVal,prodReady,Qen,Qwe,Ken,Kwe,Ven,Vwe,Oen,Owe;
    logic [DATA_WIDTH-1:0] addA,addB,sum,dividend,divisor,q,x,less,great,comp,mulA,mulB,prod,Qdout,Kdout,Vdout,Odin,Odout;
    logic [$clog2(MAX_VAL)-1:0] Qaddr,Kaddr,Vaddr;
    logic [$clog2(MAX_VAL):0] cnt;
    
    logic we;
    
    // instantiate the HLS/AXI-Stream Adder IP
    ADDER add (
      .aclk(clk),
      .s_axis_a_tvalid(addAval),
      .s_axis_a_tready(addAready),
      .s_axis_a_tdata(addA),
      .s_axis_b_tvalid(addBval),
      .s_axis_b_tready(addBready),
      .s_axis_b_tdata(addB),
      .m_axis_result_tvalid(sumVal),
      .m_axis_result_tready(sumReady),
      .m_axis_result_tdata(sum)
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
      .ena(Qen),      // input wire ena
      .wea(Qwe),      // input wire [0 : 0] wea
      .addra(Qaddr),  // input wire [5 : 0] addra
      .dina(Qdin),    // input wire [31 : 0] dina
      .douta(Qdout)  // output wire [31 : 0] douta
    );
    
    K BRAMk (
      .clka(clk),    // input wire clka
      .ena(Ken),      // input wire ena
      .wea(Kwe),      // input wire [0 : 0] wea
      .addra(Kaddr),  // input wire [5 : 0] addra
      .dina(Kdin),    // input wire [31 : 0] dina
      .douta(Kdout)  // output wire [31 : 0] douta
    );
    
    K BRAMv (
      .clka(clk),    // input wire clka
      .ena(Ven),      // input wire ena
      .wea(Vwe),      // input wire [0 : 0] wea
      .addra(Vaddr),  // input wire [5 : 0] addra
      .dina(Vdin),    // input wire [31 : 0] dina
      .douta(Vdout)  // output wire [31 : 0] douta
    );
    
    O BRAMo (
      .clka(clk),    // input wire clka
      .ena(Oen),      // input wire ena
      .wea(Owe),      // input wire [0 : 0] wea
      .addra(Oaddr),  // input wire [5 : 0] addra
      .dina(Odin),    // input wire [31 : 0] dina
      .douta(Odout)  // output wire [31 : 0] douta
    );
    
    typedef enum logic [2:0]{
        OFF = 3'd0,
        LOAD = 3'd1,
        DIFF = 3'd2
//        Q1 = 3'd3,
//        Rcalc = 3'd4,
//        Qn = 3'd5,
//        Rd = 3'd6,
//        Qcalc = 3'd7
    } FSMstates;
    
    FSMstates fsm;
    
    
    always_ff@(posedge clk)begin
        if(reset)begin
            fsm<=LOAD;
            done<=1'b0;
            cnt<=0;
            Kaddr<=0;
            Qaddr<=0;
            Vaddr<=0;

//            Qen<=1;
//            Ken<=1;
//            Ven<=1;
            
//            Qwe<=1;
//            Kwe<=1;
//            Vwe<=1;
            
//            Oen<=1;
        end
        else if(~done)begin
            case(fsm)
                LOAD: begin
                    if(cnt<Q_size) begin
                        Qaddr<=Qaddr+1;
                    end
                    if(cnt<K_size) begin
                        Kaddr<=Kaddr+1;
                    end
                    if(cnt<V_size) begin
                        Vaddr<=Vaddr+1;
                    end

                    if(cnt<MAX_VAL-1) cnt<=cnt+1;
                    else begin
                        fsm   <= DIFF;
                        cnt   <= 0;
                    end
                    
                end
            endcase
        end
    end
    
    
    always_comb begin
        if(reset) begin
            Qen=1;
            Ken=1;
            Ven=1;
            Oen=1;
        end
        assign we=(fsm==LOAD)?1'b1:1'b0;
        assign Qwe=we;
        assign Kwe=we;
        assign Vwe=we;
        
        case(fsm)
            LOAD: begin

            end
            DIFF: begin

            end
        endcase
    end

endmodule
