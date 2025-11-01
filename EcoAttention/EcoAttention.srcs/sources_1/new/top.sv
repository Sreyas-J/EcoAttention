`timescale 1ns / 1ps
module top#(
    parameter DATA_WIDTH = 32,
    parameter Bc= 4, //Q: BrxD , K: BcxD, V: BcxD, 0:BrxBc
    parameter Br= 4,
    parameter D = 16
)(
    input logic clk,reset,
    input logic [DATA_WIDTH*D-1:0] Qdina,Qdinb,Kdina,Kdinb,
    input logic [DATA_WIDTH*Bc-1:0] Vdina,Vdinb,
    input logic [DATA_WIDTH-1:0] scale, 
    output logic done
);
    localparam int MAX_VAL = (Bc > Br) ? Bc*D : Br*D;
    localparam int Q_size = Br*D;
    localparam int K_size = Bc*D;
    localparam int V_size = Bc*D;
    
    localparam int ADDS=8;
    localparam int DIVS=1;
    localparam int EXPS=2;
    localparam int COMPS=8;
    localparam int MULS=10+Bc*2; 
    localparam int TOTAL_ADDS = ADDS*1.5;
    localparam int FINAL_ADDS = ADDS*(1+ADDS/2*1/2);
//    localparam int MAX_CACHE = Bc*(D/ADDS)-1;
    
    localparam logic [DATA_WIDTH-1:0] MSB_MASK = {1'b1, {(DATA_WIDTH-1){1'b0}}};   
    
    logic addVal[0:FINAL_ADDS-1],addReady[0:FINAL_ADDS-1],mulVal[0:MULS-1],mulReady[0:MULS-1],greatVal[0:COMPS-1],greatReady[0:COMPS-1],eVal[0:EXPS-1],eReady[0:EXPS-1],Qena,Qwea,Qenb,Qweb,Kena,Kwea,Kenb,Vena,Vwea,Venb,O_en,O_wea,Oen,Owe;
    logic [DATA_WIDTH-1:0] addA[0:FINAL_ADDS-1],addB[0:FINAL_ADDS-1],sum[0:FINAL_ADDS-1],mulA[0:MULS-1],mulB[0:MULS-1],prod[0:MULS-1],great[0:COMPS-1],less[0:COMPS-1],e[0:EXPS-1],x[0:EXPS-1],eBuff[0:Bc-1],L[0:Br-1];
    logic [DATA_WIDTH*D-1:0] Qdouta,Qdoutb,Kdouta,Kdoutb,Vdouta,Vdoutb,Odin,Odout;
    logic [DATA_WIDTH*Bc-1:0] O_dina,O_douta,O_doutb;
    logic [$clog2(Br)-1:0] Qaddra,Qaddrb;
    logic [$clog2(Bc)-1:0] Kaddra,Kaddrb;
    logic [$clog2(Bc)-1:0] O_addra,O_addrb,Caddra,Caddrb;
    logic [$clog2(Br*D):0] addaAddr,diffQaddrb;
    logic [DATA_WIDTH-1:0] m [0:Br-1], l[0:Br-1];
    logic [$clog2(Br*Bc*D)-1:0] SsumAddr;
    logic [$clog2(Br*Bc*D):0] addbAddr;
    logic [$clog2(D)-1:0] interAddaAddr,interAddbAddr,Vaddra,Vaddrb;
    logic [$clog2(Bc*Br)-1:0] interCaddra;
    logic [$clog2(Bc)-1:0] intraCaddra;
    logic comp[0:COMPS-1];

//    logic [$clog2(MAX_VAL):0] cnt;
//    logic [$clog2((D/ADDS))-1:0] I;
//    logic [$clog2(Bc)-1:0] J;
    
    logic we,loadFlg,SscaleFlg,maxFlg,SshiftFlg,pvFlg;
    logic [$clog2(Bc):0] PsumFlg,poProdFlg;
    logic [1:0] diffFlg;
    logic [2:0] eMulFlg;
    logic [5:0] SsumFlg;
    
    // instantiate the HLS/AXI-Stream Adder IP
    genvar i;
    generate
        for (i = 0; i < FINAL_ADDS ;i = i + 1) begin : gen_adders
            // Instance name will be gen_adders[i].add_inst
            ADDER add_inst (
              .aclk(clk),
              .s_axis_a_tvalid(addVal[i]),
              .s_axis_a_tready(s_axis_a_tready),
              .s_axis_a_tdata(addA[i]),
              .s_axis_b_tvalid(addVal[i]),
              .s_axis_b_tready(s_axis_b_tready),
              .s_axis_b_tdata(addB[i]),
              .m_axis_result_tvalid(addReady[i]),
              .m_axis_result_tready(addVal[i]),
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

    generate 
        for(i=0;i<EXPS;i=i+1)begin : gen_exps
            EXP exp (
              .aclk(clk),                                  // input wire aclk
              .s_axis_a_tvalid(eVal[i]),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(s_axis_a_tready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(x[i]),              // input wire [31 : 0] s_axis_a_tdata
              .m_axis_result_tvalid(eReady[i]),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(eVal[i]),  // input wire m_axis_result_tready
              .m_axis_result_tdata(e[i])    // output wire [31 : 0] m_axis_result_tdata
            );
        end
    endgenerate
    
    generate
        for(i=0;i<COMPS;i=i+1) begin : gen_comps
            GREATERthan greater (
              .aclk(clk),                                  // input wire aclk
              .s_axis_a_tvalid(greatVal[i]),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(s_axis_a_tready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(great[i]),              // input wire [31 : 0] s_axis_a_tdata
              .s_axis_b_tvalid(greatVal[i]),            // input wire s_axis_b_tvalid
              .s_axis_b_tready(s_axis_b_tready),            // output wire s_axis_b_tready
              .s_axis_b_tdata(less[i]),              // input wire [31 : 0] s_axis_b_tdata
              .m_axis_result_tvalid(greatReady[i]),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(greatVal[i]),  // input wire m_axis_result_tready
              .m_axis_result_tdata(comp[i])    // output wire [7 : 0] m_axis_result_tdata
            );
        end
    endgenerate      

    generate
        for (i = 0; i < MULS; i = i + 1) begin : gen_muls
            MUL mul (
              .aclk(clk),                                  // input wire aclk
              .s_axis_a_tvalid(mulVal[i]),            // input wire s_axis_a_tvalid
              .s_axis_a_tready(s_axis_a_tready),            // output wire s_axis_a_tready
              .s_axis_a_tdata(mulA[i]),              // input wire [31 : 0] s_axis_a_tdata
              .s_axis_b_tvalid(mulVal[i]),            // input wire s_axis_b_tvalid
              .s_axis_b_tready(s_axis_a_tready),            // output wire s_axis_b_tready
              .s_axis_b_tdata(mulB[i]),              // input wire [31 : 0] s_axis_b_tdata
              .m_axis_result_tvalid(mulReady[i]),  // output wire m_axis_result_tvalid
              .m_axis_result_tready(mulVal[i]),  // input wire m_axis_result_tready
              .m_axis_result_tdata(prod[i])    // output wire [31 : 0] m_axis_result_tdata
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
    
//    K BRAMv (
//      .clka(clk),    // input wire clka
//      .ena(Vena),      // input wire ena
//      .wea(Vwea),      // input wire [0 : 0] wea
//      .addra(Vaddra),  // input wire [5 : 0] addra
//      .dina(Vdina),    // input wire [31 : 0] dina
//      .clkb(clk),    // input wire clkb
//      .enb(Venb),      // input wire enb
//      .addrb(Vaddrb),  // input wire [5 : 0] addrb
//      .doutb(Vdoutb)  // output wire [31 : 0] douta
//    );
    
    V BRAMv (
      .clka(clk),    // input wire clka
      .ena(Vena),      // input wire ena
      .wea(Vwea),      // input wire [0 : 0] wea
      .addra(Vaddra),  // input wire [3 : 0] addra
      .dina(Vdina),    // input wire [127 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(Venb),      // input wire enb
      .addrb(Vaddrb),  // input wire [3 : 0] addrb
      .doutb(Vdoutb)  // output wire [127 : 0] doutb
    );
    
    CACHE O_tilde (
      .clka(clk),    // input wire clka
      .ena(O_en),      // input wire ena
      .wea(O_wea),      // input wire [0 : 0] wea
      .addra(O_addra),  // input wire [1 : 0] addra
      .dina(O_dina),    // input wire [255 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(O_en),      // input wire enb
      .addrb(O_addrb),  // input wire [1 : 0] addrb
      .doutb(O_doutb)  // output wire [255 : 0] doutb
    );
    
    O BRAMo (
      .clka(clk),    // input wire clka
      .ena(Oen),      // input wire ena
      .wea(Owe),      // input wire [0 : 0] wea
      .addra(Oaddr),  // input wire [5 : 0] addra
      .dina(Odin),    // input wire [31 : 0] dina
      .douta(Odout)  // output wire [31 : 0] douta
    );
    
    
    always_ff@(posedge clk)begin
        if(reset)begin
            loadFlg<=1'b1;
            diffFlg<=0;
            SsumFlg<=0;
            SscaleFlg<=1'b0;
            maxFlg<=1'b0;
            SshiftFlg<=1'b0;
            eMulFlg<=0;
            pvFlg<=1'b0;
            PsumFlg<=0;
            poProdFlg<=0;
            
            done<=1'b0;
            Kaddra<=0;
            Qaddra<=0;
            Vaddra<=0;
            O_addra<=0;
        
            addaAddr<=0;
            addbAddr<=0;
            diffQaddrb<=0;
            SsumAddr<=0;
            interCaddra<=0;
            Caddrb<=0;
            O_addrb<=0;
            
            for(int i=0;i<Br;i=i+1)begin
                m[i]<=$shortrealtobits(-1.0/0.0);
                l[i]<=$shortrealtobits(0.0);
            end
        end
        else if(~done)begin

            if(loadFlg)begin
                if(Qaddra==2) diffFlg<=1;
                if(Qaddra<Br-1) Qaddra<=Qaddra+1;
                if(Kaddra<Bc-1) Kaddra<=Kaddra+1;
                if(Vaddra<D-1) Vaddra<=Vaddra+1;
                
                L[Qaddra]<=0;
                if(Qaddra>=Br-1 && Kaddra>=Bc-1 && Vaddra>=D-1) loadFlg<=1'b0;
                less[0]<=$shortrealtobits(-1.0/0.0);
            end
            
            if(diffFlg>0)begin
                diffFlg<=2;
                
                for(int i=0;i<ADDS;i=i+1)begin
                    addA[i] <= Qdoutb[ (i+interAddaAddr)*DATA_WIDTH +: DATA_WIDTH ];
                    addB[i]<=Kdoutb[ (i+interAddbAddr)*DATA_WIDTH +: DATA_WIDTH ] ^ MSB_MASK;
                    
                end

                if(addVal[0] && SsumFlg==0 && SscaleFlg==0)begin
                    SsumFlg<=1;
                end                

                addbAddr<=addbAddr+ADDS;
                addaAddr<=addaAddr+ADDS;
                
                if(interAddaAddr==(D-ADDS)) addaAddr<=diffQaddrb;
                
                if(Kaddrb==Bc-1 && interAddbAddr==(D-ADDS))begin
                    addaAddr<=diffQaddrb+D;
                    diffQaddrb<=diffQaddrb+D;
                end
                
                if(addbAddr>=Br*Bc*D) diffFlg<=0;
                    
            end
            
            if(SsumFlg)begin
                
                for(int j=0;j<ADDS/2;j=j+1)begin
                    //FINAL LAYER OF ADDER TREE (1st ele)
                    if(SsumFlg-j*2>0 && (SsumFlg-j*2)%8==7)begin
                        addA[ADDS+j*(ADDS/2)] <=sum[ADDS+j*(ADDS/2)];
                    end
                    //FINAL LAYER OF ADDER TREE (2nd ele)
                    else if((SsumFlg-j*2)%8==0) addB[ADDS+j*(ADDS/2)] <=sum[ADDS+j*(ADDS/2)];
                    //1st LAYER
                    else if(SsumFlg-j*2>0 && (SsumFlg-j*2)%8<3)begin
                        for(int i=0;i<TOTAL_ADDS-ADDS;i=i+1)begin
                            addA[ADDS+i+j*(ADDS/2)] <= {1'b0,sum[2*i][DATA_WIDTH-2:0]};
                            addB[ADDS+i+j*(ADDS/2)] <= {1'b0,sum[2*i+1][DATA_WIDTH-2:0]};
                        end
                    end

                    //INTERMEDIATE LAYERS
                    else begin
                        for(int i=0;i<(TOTAL_ADDS-ADDS)/2;i=i+1)begin
                            addA[ADDS+i+j*(ADDS/2)] <= sum[ADDS+2*i+j*(ADDS/2)];
                            addB[ADDS+i+j*(ADDS/2)] <= sum[ADDS+2*i+1+j*(ADDS/2)];
                        end
                    end

                end

                if(SsumFlg==9) SscaleFlg<=1'b1;
                
                if(SsumFlg==39) SsumFlg<=0;
                else SsumFlg<=SsumFlg+1;
            end
            
            
            if(SscaleFlg)begin
                mulB[0]<=scale^MSB_MASK;
                if(SsumFlg==0) mulA[0]<=sum[FINAL_ADDS-ADDS/2];
                else mulA[0]<=sum[((SsumFlg-(8+2))%8)*ADDS/4+ADDS];
                
                if(intraCaddra==0) x[0]<=less[0]^MSB_MASK;
                
                if(mulReady[0])begin
                    maxFlg<=~maxFlg;
                end
                if(eReady[0])begin
                    eMulFlg[0]<=~eMulFlg[0];
//                    mulB[1]<=e[0];
                    eBuff[eMulFlg[2:1]]<=e[0];
                end
                
                if(mulReady[1] && PsumFlg==0)begin
                    if(diffFlg==0) PsumFlg<=1;
                    
                    poProdFlg<=1;
                end
            end
            
            if(maxFlg)begin
                for(int i=0;i<COMPS;i=i+1) greatVal[i]<=1'b1;
                great[0]<=prod[0];
                interCaddra<=interCaddra+1;
                
                if(intraCaddra==0)begin
                    less[0]<=$shortrealtobits(-1.0/0.0);
                    
                    SshiftFlg<=1'b1;
                end
                else if(comp[0] && greatReady[0]) less[0]<=great[0];               
               
                x[0]<=prod[0];
                x[1]<=m[Caddra];
            end
            
            if(eMulFlg[0])begin
//                mulA[1]<=e[0];
                if(eReady[0]) eMulFlg[2:1]<=eMulFlg[2:1]+1;
                
                if(eMulFlg==7)begin
                    for(int i=0;i<Bc;i=i+1)begin
                        mulA[i+1]<=eBuff[i];
                        mulB[i+1]<=e[0];
                    end
                    mulA[Bc+1]<=e[1];
                    mulB[Bc+1]<=e[0];
                    pvFlg<=1'b1;
                   
                end
//                else pvFlg<=1'b0;               
                if(eMulFlg==1 && PsumFlg!=0) PsumFlg<=PsumFlg+1;             
            end
            
            if(pvFlg)begin
                
            end
            
            if(PsumFlg)begin
                for(int i=0;i<Br/2;i=i+1)begin
                    addA[i]<=prod[i*2+1];
                    addB[i]<=prod[i*2+2];
                end
                
                for(int i=0;i<Br/4;i=i+1)begin
                    addA[Br/2+i*2]<=sum[i*2];
                    addB[Br/2+i*2]<=sum[i*2+1];
                end
                
                if(PsumFlg==Bc) PsumFlg<=0;
            end
            
            if(poProdFlg)begin
                poProdFlg<=poProdFlg+1;
                
                if(poProdFlg%2)begin
                    mulB[Bc+2]<=l[(poProdFlg-1)/2];
                    O_addrb<=O_addrb+1;
                end
                else begin
//                    mulB[Bc+2]<=O_douta;
                    for(int i=0;i<Bc;i=i+1)begin
                        mulB[i+Bc+2]<=O_doutb[i*DATA_WIDTH+:DATA_WIDTH];
                        mulA[i+Bc+2]<=prod[Bc+1];
                    end
                end
                
                if(mulReady[Bc+2])begin
                    for(int i=0;i<Bc;i=i+1)begin
                        O_dina[i*DATA_WIDTH+:DATA_WIDTH]<=prod[i+Bc+2];
                    end
                    
                    if(poProdFlg%2)begin
                        O_addra<=O_addra+1;
                        l[(poProdFlg-3)/2]<=prod[Bc+2];
                    end
                end
//                for(int i=0;i<Bc;i=i+1)begin
//                    mulA[i+Bc+2]<=prod[Bc+1];
//                end
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
        O_en=1;
        
        we=(loadFlg)?1'b1:1'b0;
        Qwea=we; 
        Qweb=1'b0;
        Kwea=we;
        Vwea=we;
        
        if(diffFlg)begin
            Qaddrb=addaAddr/D;
            interAddaAddr=addaAddr%D;
            
            Kaddrb= addbAddr/D+1 ;
            interAddbAddr=addbAddr%D;
        end
        else begin
            Qaddrb=0;
            interAddaAddr=0;
            Kaddrb=0;
            interAddbAddr=0;
        end
        
        if(diffFlg==2 || PsumFlg)begin
            for(int i=0;i<ADDS;i=i+1) addVal[i]=1'b1;
        end
        else begin
            for(int i=0;i<ADDS;i=i+1) addVal[i]=1'b0;
        end
        
        if(SsumFlg)begin
            for(int i=ADDS;i<TOTAL_ADDS;i=i+1) addVal[i]=1'b1;
        end
        else begin
            for(int i=ADDS;i<TOTAL_ADDS;i=i+1) addVal[i]=1'b0;
        end
        
        if(SscaleFlg)begin
//            for(int i=0;i<MULS;i=i+1) mulVal[i]=1'b1;
            mulVal[0]=1'b1;
            for(int i=0;i<COMPS;i=i+1) greatVal[i]=1'b1;
        end
        else begin
//            for(int i=0;i<MULS;i=i+1) mulVal[i]=1'b0;
            mulVal[0]=1'b0;
            for(int i=0;i<COMPS;i=i+1) greatVal[i]=1'b0;
        end
        
        Caddra=(interCaddra-1)/Bc;
        intraCaddra=interCaddra%Bc;
        
        if(SshiftFlg)begin
            for(int i=0;i<EXPS;i=i+1)begin
                eVal[i]<=1'b1;
            end
        end
        else begin
            for(int i=0;i<EXPS;i=i+1)begin
                eVal[i]<=1'b0;
            end
        end
        
        if(eMulFlg==0 && eReady[0])begin
            for(int i=1;i<=Bc+1;i=i+1) mulVal[i]<=1'b1;
        end
        else begin
            for(int i=1;i<=Bc+1;i=i+1) mulVal[i]<=1'b0;
        end
        
        if(poProdFlg)begin
            for(int i=Bc+1;i<=Bc*2+1;i=i+1) mulVal[i]<=1'b1;
            if(mulReady[Bc+2]) O_wea=1'b1;
            else O_wea=1'b0;
        end
        else begin
            for(int i=Bc+1;i<=Bc*2+1;i=i+1) mulVal[i]<=1'b0;
            O_wea=1'b0;
        end
    end

endmodule
