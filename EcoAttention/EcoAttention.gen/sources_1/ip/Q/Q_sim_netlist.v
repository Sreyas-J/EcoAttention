// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug 13 19:11:54 2025
// Host        : dell-Inspiron-5415 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dell/Desktop/projects/RISCVextension/EcoAttention/EcoAttention.gen/sources_1/ip/Q/Q_sim_netlist.v
// Design      : Q
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Q,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module Q
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "FFFFFFFF" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Q.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "35" *) 
  (* C_READ_DEPTH_B = "35" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "35" *) 
  (* C_WRITE_DEPTH_B = "35" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Q_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20128)
`pragma protect data_block
jtLxllXfYNRz0udBr+EPxjNMZO4bbS9nwUfM/Ob30w7R/jepE9PM4luwX8lG3IRaDtaW4w3Wlo2Q
uh3hzQQWkSOThD16itDCbPpMXuvHcr1pVJB2geZo89pCMz61O18oplpEXOysi0hqlTsFE4x1gCe7
EhuqSsx9kV/53/QfQDFv559ZnwcDh513S9w3PluxgwQXXw09er3imrDdR8KvrreiMe3HOVZgI2yc
2EGN9AxvDPs+ke8Cd+OYV5hPIEsuA75z4r72cnpdWXVyyx+EynIS+eAxWHXOHguCvTDyHNGB/bAg
c7XxY85WPO0trxSXo7wgxdUb/ukGfCQg0N1S5SOte+rtiP7j5+cD0HyZQHGoPtBG9wkDp+/xKmmy
hqhJsJH97Vp3+Yj4DPmDNptWBh6cmmxRD8AQ3AolwkJ1nvL9xJw3eB1ZhhHzuizup2BzoCMwGb5e
DkbVbSmef7A/qjpdrJKCZwLvMmO/1mZlb1jlbu2iejOHdk5MG+Yl5B6kHSaEV2OxrTiUwHL4Qyz5
N36ilYNg39WMQJJTMrQbtjKzQ5jMlXckgnxikbz3qTif/zaZvCiCGedTJQnrN05aiTGHul+muqm+
ltR2r6MUBYw53IAHRsRp0rKqXJllGL22jj8GVI02IAeuKDgiMRQSR9JXu2M9dOPLspdPTFoTo51Z
i2z2j1PpBa1DGtpkZcMVbM5rML2VzFswIyyBaEJYnEL3Rmm+hzqglTK/JsoFoxadeewvh5oe/wSj
6afn90OWxmXcsZ/CDSNK/PBWaMED7lUdrO8oaOlTakglND0+92p0bJJ+WE3PiM5ZK+BhHTJQOnmr
jdPPRcIXEDcFeEFuWj+aJ0W6Vx4mlhCfAkqvUQ3eLEqBoc58AZYDCIx5w17rhWbboOK9dU0z+JW9
py63o+JcrzHMvguUohMxVXvXVgAPa9yyQzX/eOEBftXqa0Im73K7/X60C9D6R3b3zRkV3IMh2MLG
8iRr3SONZrQHrcnrMaAMOb4wKd7NKaJ8ceC1Anj78dR2ohSMvqjXiu+X2dIVVP3MfYmgYz4e8JFq
dP6ealVM5Ue/mWJ7PY9Lb//QwckeRf3tN/i806Dhxwvar0vd1vIARobMKAEMz+7XTI9Su9ffN1HV
fvLvnpNqTF3pnu8TZSPhu2IYGzhssc8hJ+RSGNm8ffVH61RbwvC+RHZ3kZsLYzEbRMFuYvyMZgbg
MOlQhe5JIcmUeyXDuQKcRGR7oovv3xBGlqNFzqFwtoxaCyLuo4xAy3EpRR2yrD0KYa9ZWifbP6Fy
1/O6PTgH4tg6w0AO2L02Eya1jiodALxyQQplsoqPcMZyEAQ/+RhqUhemylxyGLTJ77D8EWU3d+M4
N9bM89jBBDr3ZRoI5HC6lABl4AOTNZV04zKScfN31ICD4hfPGjjrQ0FAW5bWMC6Qi7xcugc1smSY
bDmJceIeA3H5CX6XxGU5m1M3LF2FqK7B0RjSXwaYc0VRST3575oDXzV70AlUT/UquQvjytQnxaWZ
SZa+Ojmqr5/iksIVfCwd6ncZdAvTkgsnp6rdwTzcQoQTYNKbSHA9tEMKeVbZHSmlj0pfbu8adBmp
k+ogIt9BL2bg73h65BWsx3X9t1JFkcXm3RIE9KUBRf+7etYu2F/JLED1vntpoukihZ5vzIgGBccj
hTHE8EptpeElh/n8/0ZaLGR1WNiC+WXnf3jP3K86zG2wP59LEXKdcCyTd1GdIxzJYwyurCmhZAKH
D3OY7Na9YVs2zAn0JJ81IRkNBpyOi7kiUCBsgWcGCAHquxhkGIhuTp2hM42boNZZhp4pp45jbwax
t84scAbGxGz+RDrQ6q0BWwPZuhmR1vb1dfPeHV2Xnay3EMKewDRv2SZSd/J662mfjNJD9fcHfJCs
KuKxZZ1RmuWc5ynAQ+mLsDzHKF6LM8NRHIJOOIawYx4ZaytHTnDBVaAWCgs+jrWfnDEQdYgwwCuh
uPMg7aFnMXRJqLlPr1ooptxi4wXTE6MNW1OCfP9Np6GeyNTmkj9I/89vwSUq39bR80U/Uc4oBIA2
OhbAv7u4lmuhMKOXZihzYWtvRK/abCWhnO+xdxA7ZFu1zzKwHIpEs6fLbRbZxukauN3t8YTqcycT
uc1F6tP8n/biRWfZ4ozns5TwAWWFsmRvqvy6/9b/+h6MSiaFOAYN2Jtvg84eihUWydVsFHT5fkV/
mjihwI/uTcu+q3wBzuzjlIJWvoJTxkAT3m/kpjZ4ttHImJ0aDFQJkp7t6hv6SpjLjuCar12E/em+
46xB5toKXZ68oduLC+71QI02FMVB8TWZRT4ZAb4HNU0Ld7sKk4GsP3c+W+wAVPqb8Bk9/hXNFPRj
muaTERUbsgT+1rrF9hzIlnSiLrpyDKrDgumpMY275rzzTcyJnM2BgoLOTKSuIn+PgbV4Sf9xX5zK
t17p0Qx8AnID6qIkTvyAyzyw5iZgtTyLEfVfzxTQMqb29+DjYfJqfa6jOeuFN/j7V1+y770zQwT6
tRWQjEOae9dFpIfVXxA95ZzoO8hyiQoMWFnroiQyb1MNlZtUJTA0WdpJaxuh5gMQEHngKBbzI4yi
3jPVUfK8skrq0ok0oTTckScmRMNv1Nj6zs1DhRW3dqHQ9DSmJabgbrFfpFRE3dOeCeQE1SRKnDWK
qu78uytRem2KcZ0LiwqewBEuwAiCHScDJnonhaCdps9kc689z7nP731DFBgMhHMTQ5Z5OK/tRg/d
st4g59LmD6sfjiXQQU4YKDmxtDpHi5z91o0r6pswjaINL6oC3gtPE8651VebBykoGK9FqH+5/lD0
PehW6Z13zGOZLC1r3g+SUREZgnkhvv0OqJEMjqHCVn4dYbx97KcE1eQwN44G0V/Fim0rTa9Or/tD
5OZkqFA965IOK8hvWXrval6hg+PXlFB9O0jZT5+UyKb1wn7dNDqe9DGEqAFiseMez6JG5SoWc0jF
ygBfI62S0eV30P8wkM4yTW0M7PIqiwBHaIVjn2KyiIqrbhdByaVQVK98286wGwL+se5CAjFlU2fv
Y/12+tN/kZVQ7cFVQW1j6dbZfr9Qvx63Da7HpZi9dBGSiVjXBUvyY+XpDEd1v7dEu5tW/oG+82J2
LSNFuD+AewZikJAq4ERzMPCEdwi3LnR9xJ4aOUHPrDs1y8BC5w/oOjfOoZFn6mn43aQ/5xwgj/uY
3DKGlg1+/okYL730gvWm/DH20BM00JH+nzDrCFzB/+wFDIDSJ9dmjvdikmT5ET2UKOhFQgnp9MpZ
MjKOIZep+91iL5d0dEEUnI2TonrZPg4mmCvwOo9vNqS2g1qGUVmHvQJ18EEywHz+GjBT7uig4wXV
Ec2+GHcVZWA+zhc8ZVFJKVvAx6opGCkulwlfYsAA1u5qBx1LrvpkXpbrOacCzif700Q9Zc0V4r7k
aCA0Cb05O405nHD4j0ioZNES3YibKsaOcSCp2arUWkFobRR/An/gwIGKIIKWGpKFSLo0YlU2NlIl
iHFy4LR4Cbw0K66F9jhVXQcIKnTq/bJ4IW4VziH80cQ2o83/bhV2cYle104jUZYibHz9o6WNcUG7
C79Uq+CKDlqM8Be78+aBccAQERlDlgl44rTn9ubqYwMi7kYwLC3Z4LqEwxyyBQpYO5tDaP2T9FxS
QCHkeBL0LLWzTMp0cb7jsMrXJXwIW6+HkkmmA42eckPKm+ahaeO1YxCVEpMggUIJoSddhavLsDzI
S9cwYoxC73Wr5AFEHn7cAmEXwtp+vU6gRWo0qDEbeIJaOA+ORr5wIco0GdOie1XBaXBpFpeXSTqm
/jMs50yduBdhojC7SXwBZK9AqGXH018rI1PkBEqdJBWHS3LOTsLcKSB5njNC5ekq6EqCHtW5bxP0
WRW+0+5P4EsQHSdzSda4k3d+ng8i+jaWCl2WdW8OSpGCD9bIxWcn9RD5wZfgIXkZPO5AHHdeyycm
qaG5WU5Pl61/5CzChE51xwsQL04iDlGOhQuien8PB4E0gDGDhvq/uO7VTWk3Fh0nhnJNydMgzTbX
cGNOPB0mTv/lQwrFzooNZfp4PmNo0tipxaobl37jN/wMmHiG0pmSqR+EXVnHML4Ej7vC+SIh4tdp
8150FNNZGid2Uhr43Kg0HR6De5W6KyYRUJS1WSp1yLKMKfoDzKPiW0TwGLlaV+dyK9txZXsYLiYY
51aSm8nWiV0VsNUBQNgiSznEDdtY2sBmcZJDKsR/6ogO9FLqKEcZ/own4fFYKC8JbmZzu5cvlnNM
2tGeFsU+gos4O0xUelgzxENgiWJFVzbQRj6ekP7Xh3HlBq4RdmpK1agth/X2cjYIiKNIsVmNV4Ny
bmZwbqIDKGUh854d0WynPkNjAvC/y7wjU+78Brg22rG+6Ii5yOMZ8fqPcaZhxiiy5iYU5qQNtgjv
nT8HeWfEMX4uNlwO7yXwBm44Ljzyl9h9YmUBt2Woro4FJxMtoylqMvuZ1R+gB1IARhCrD+FERRdX
eMgdiiGJ1hIaqyFV+Coe/6Ef6MUDnncYUhKIOCTSBzv07uFaGyQg+zi2U++4fksNlIZENqUYn+8I
LZRt3KLagorxRniLSyDryq6LM/P17e2JCyWB8ZVDPZgaa//4apCIzWAhXLtF3oHsmgaQwdKzJZAS
Ata4dAqqKOFR6oKRF0lprizgW5ev0iCON93T7X4I3cn07H22+GBSnokrfNfjo+MHt8w8bAT3Vvtt
kSryxsZWCgSgS2/NuDdXA9DRnPu+3/IvqN2t0VG/F/dHsG7diAvwhTYKJcARn/wq4NtgKa53XX2M
RsZnPh2FouPMci5KYFfD8d1pGSeE8fSRmKrwRrzay5KTNPf0de6GYJNSmSkf6XP+lpOycK6L1xQJ
GJJp0JgpLSkbArLi+03x3rsd2ET7HC3mt27k2BVqtIFZ6SQcUkd4TY/4o/4ULaBgDKH1nCsAgynv
ntGJF9MOh4YinvQN20KVfOmrcN3VsN2gH73my6IMZZtV4XZgl1LCG3BOAX5RqCT+NHc19lwDBp5H
9NunsVOq6DRl/+7jfJtRu/euu8p0uZIjy7Xxo7ZCbi2HQt1TRr544MfYUyahhlQ+CGeWNkBNE+ZM
KY8NGuH3hJi2+6esJOjzSjEjJNs/EKElZ0pu5AmZuEl7mQ8uhmg+6lH2q+VtLpqMKY+eoe7Q7QXM
B5nKAWl0/fBp3EwSRWhHfrGw6xFnccuU2d0YhVfweizO1bUDF7oIocontuho6/yQSd/BIYB8+WsB
n6b2InqiCSiKoHNFvFZmzmZ7kbaBaWY6yR9vJ5njTUO06Xdr2CCQbsYKBoMflCv8HWMnVqWbqyCL
ydo3W7pnDEXevkz3px/S4c3ZCLMg6XPVT2fSr+ubLkecS2vI6JMjS4ONv3mua85jmOKJ7Gwr/Zxd
PTAZH+7nGpg2/mbYDVgTu6Sro0fYLyIfpsyiRnfIjT5hGE1HGcGQ/eRLjx+HvCs3StDgZJ18Hzv4
FftfySL36B8MxJzM6jcnlhJrId3vL+cEPGUH+x7vpq9u6nngk0zomU+YqJGjK4lpA84XnvS0BMlG
ecjxha+IThvaCteIpNj4Uwdey9ZsuyeahiAFMHavyxhDIylLh1ZQ5rxqPPaS4Cvk0vmKjfL9qbyK
hG4nIAMwJbW3UHJTp3up0qXiQKWokzKLdMSv6E5nZf5SlL9etSLYzzvrOb3h7lZiHEdfWb/yObba
a63w3PQm7ZGjox3YPcg7bwWXO0XVNz8CN33pRWvrX1R3Q4jZZKxdGR0PrYNrs4CWH6DVcf6gW6A0
VuiysTaQbM8fVY656sccDwolr7NFls9D3KUAXxIXaClhDgqvOwOKCbYSstNxwcqDTFbdnLs3GTN+
TKPyIxMYUamr8A4ip3+9UVnjveteytU1lvRXqpvPNDTnZi03pi35Gaw6AZa/t12osB6WoJACxnNg
bS0DnNcTUXYZM42i+/c3GqW9x+pyQMIwdJ39y7Lwa2xkxIDVVm2aeMfoRBYQPbqdkLGkxpQrCepF
XGgxMRaB2WOSjy+FlVSej1VkYe7gv/Ux4qO68WKrVF4qH4a7qocPWPxRGmn2qEE8HL5m3IIeZb7H
/b9NBaepQd6IE9bPFNvkiapTQ9NYa/kYgXy38t1KPRn0HLMMUgXBW2dACPiTrzeZ2Y6xxS7syv8K
me8T2N9RKyBRvLAatZe9EbEbYgmFNVni1lJTugL6KiILh/joHKikUHx2z/4aVGin7TvDwSUv2q3y
ZEHtGGLaECKO56D/tcf1p/Ry9BVtullbeumMMSlfRTOkIgs1kmNYzN60sM7YgaCmCQZVa4IqXivE
vs/8TNbpl4aMNAfXDy8LNJO4Q/kd9+WP54AJ5pAQvruE73uxBrWjj30B8bW2XX/lI8dJoL4A2/F0
KUTyVX2ersWUYLi3OwoUTiE2EAtcW1wBVK/UuDKxihZda+o5xWdpVSGYPK/S4PJjvqDXA9f9DlwA
CzGfsaW3ddmlojFRU6d3/mj5lmvlrUpMQcBww5kUqAQMyS07UE/m79sctdpn04ndDE0/5YrXIgUW
JeBjUDStv50cL1bwkUZgnsvLIPSbMX6w4kiPqsTGDgNr2SdNOP66XHHLaUCGqvy9SQ5F1i0VHlz5
iqvJroMEeidx7AjwHC/QkA5uYb96E7/H3SvbYN98CH9CSJEBIC5RtbTW2QAY3/5cYlf5iF5kf+Rj
pSnARMIGDOwxo/IJQIp20+wk6i90+ZfRr6YyyBhrl//XOdbcDwDty4Zem/FALUXUdjSdo8lISCpe
oy24bXjJHWiwG69CPWLqGxZrWuXVq7Xb8kOkRjF0YPcf3PrjM1HLHITZx38VuS3HN3+6HSjBSD68
lSaAXyQBNanpxjdnmRlRzdilarMOqfotJBof8fof6b5qBlUfJCafjbMlKnGHS62BqbxLaDW5WRBN
pFIVMJzJsU9WLz8L6WwSN2v6xcVCZSxsXn0lLPL92AWBzuDk1c5Eh5fPI+/kHKZWsTrv0z+HlH4X
anPne4FZUlOXysqzCxXgLwSVvjmA1i+/ZfLJWuEPY5k8FMzsOXgF1v5Wy2e57WG3G66MRdjpZNtY
0HCL2AoKv7SshHtXaTtGizNtuLWyHex+QxWnPrkjCQpQQYy54AS/YJSuxVLCCgRZlMpiu5tmgB7n
xBCpqbGUSn3boI8QSsSUNH1QR8QuHro9838uP/Ng9a0jZmH4rEapwJywOFkOgh3e08ew4Xg4LAcy
3NT25CH8z4g031j9j597/TF3Btkkq+ZioWcYFkVVsTSoJX23D6WN/jRZjrtacqQl81veSxqJMmKA
Jmy99H9GM3vWFXTq3sCCtxfsl6aRyhbH+68XFDi2ZqwREE+NZxzU4euH6v+nMc0wIzFV+RAahbeA
ZbemVdDs/4J6+285qP4GJ+TaZ78mzdERGHZ2alaRnIkAHo+ttOzSjOEXo4g4iL9qahrkf99oKR0y
44oUcZ4fDoLSKNYjI6V9qiwIT7mVB+PHBXUgEfbQulk1BDDWuSRAHYBBaqyr4CVuHzFyCuVO4J9Y
Qn9dvKfg0RZz65YcVfw1ZpEvfhFiMG3+uaS3+MtU+ITUIKJTJYWFWR/14x9U00eb46P6VNH1MIr9
Akmd0z9Am4bnOnrlmfPrfmHTod3JQUXvT+QFCGsDlyldoWLGtLwb48MZRhEHTkcG4vE4VxGT2XlV
G37tw/77Cv6ky3rFaKtUwrUTsDohMpv7eLCeGgBoZtt5Nq/rjEGx0LbCDzi6Sb8RX17j3u466tqC
q2ZlxPjg4sr1InvPvIRQWJGg2r/DXyleP0X2zyWI0g3pVGa3xTO0KFAJYVx0sNgHPPh3wpz+x6wA
BVWegt7g9KwuqKkmkKPAZrRPYfdDs0AwrtzwPXIhBHOoOX/IcAmgTpHqx+eXTzoUy+3fNUK+wsKf
4KSPXb1sUUYOazklmSYmBMFlVi3RnELYoy31OgKhHFZU/RnBsnfD5hMzlP4JpefrCU6vX3RNyICF
TxYYXkybqs0bM892pXC7CbACEKKKgft5LHe4J0GzhXSZkSc96QDoDRr9aFcfFdnMd2bsZSkT0Z1Y
0SxAW1sTpjH1baUKc124qtVYKXsljlVSiW5bkkskrg0b9cZ/QQDHWZP4ko6da19PZo9avH2vsvaQ
bFbyPMZK2jZ6AyFIt1WfpBzdnjLuiWelyy+QqAaW3n9b480l9l3TZr+Rhnc64PXRgOjQnKl5dtpY
NauUpIwvq64YpJluqT2TsHmz16kdOhyZ1dBD6fj3LsMuRbTQynLaTOHJzUD4HRepslfKTaJHVql+
+YqpRiYyfMMwc0B3MT5H6lqkLBkWHSn9Y17hVT4RWskPgpiaZrRMO0xFmCcZEBJpwqN9ogKWF6Ik
yMinShrKK7o8W5Ha/dZIw3mGPZ9xP8hUlJ83eSOCZ/pYyZN8PJ3b45VYsXn/j1Iv5kFB0sDyEpof
8S2gG+AoQQzawkr+1xmcfv+frsS/IppkvrLhNoLI0eCvRlLC+CEWGJ3qugJO352/xQjMPhJRR+El
rGDRltPLJftSVbVrs3wwZjiKhALawV+KqZE2yldkDxdeywtXlJYemfskX55mEdshqx6wnH2tOvm3
nq3ixS5YsnAuvO7lxLrYqghr86WLMiRNE7+yayXefOUt9R+Mt3Hh4z052iQoDD1pkC1RwAOMLqEY
gTJI6RreBj05O7rfbXOSn3W9B16wD1XRvFKstBizP5A4e8HpPpmrFK42TP7UdTcV/CCSkZShaMTE
aONVOabn6jKTLEl0xN2Eb1NSYDf+NgzqssTh0Lestg+1YChZpffdBhyQBnsaff6NaoCfW0Eaw31l
q7mIUQfj/QmtmIHxAKtThhNAiYMaabWN1zJkPaSGkTHrEL3zJGJYOmYijiLYuG+QFGo4vmKs+bJW
+eF/vpxrd23h3BYV0dcCE13n+zvMTgtVvkNARW/S8jZIeraxc10S4UX5YkjP061n00+V1OlKAJrd
hgFQNZAhgIW6F08Nttga/4aDeeW++xBQ+pKraZEip60Oz9X0tCueii7Pty63PIX84Ah7nxZCw0ec
t4NaVViAMgtTF0Gs3OhEgXi7zhcEp5Rd/E9UGQwCEYxk/q7OfJpzJE7NTEvXyvj/5PjgYlGFszVo
/PiWlfPOHyeHqTy8MZLt2Qor2934farI+vbnHz5wnr9oSSO1ixQCOJ7Nd4v+kNlZ/KBpnFjiR1iQ
E7BJ18emcxSNBP9u/5EUbCLnCVYklskvSEXR4e8n1nPjUyNcIas5mjrA4ueQVRJqXp4cnvIYrv+R
9jk0jPXl6zSff5BO96YzVb7ydGzfXe2YbI3a3mq5KT8I5sSL77zZ23MS+djPtpYZtcqJbn3yMs/v
h/ojSjsorlN2oNm35DhUH3J6RmITOKdrka4JBi7OvynVPKdHUVQCnJ1rTZyBIvbse89Nv4Vr8Rmi
qw+5rtVu35LWW/XmyZxCfjBvzkyEBIomZtGmps2CGq/S28JTdp/oM6Xg6zJOSQu0FFu9M0APZvHf
TTQ+zQTu0CSU1jVVPEkR51UWwXqI61ZcI/SLx0s78uPagZYQn3nC6PTSAt4twZTlGoi6tE0Gqsdd
B8Ny7OBFWIXx1NNwhlsuLYflJufgQAkTxjtRdtrrP6nc6VxAHYjLomiH3DHTGowrRKq7vArN0lf1
coX9gR3OXM3ytNCszA9toOYVtParqNsufQcK0zVsaLayc3xvNJg3xhx2Neq6nRm3qFTIq4STH12s
YNzubPG9v4ZCZw5xNeDWy4p83q3PptIcpOE2iEpCN1EgEvv8wxgipP9wXgtYCmhx7o2gRqgA05o8
yqfZeTf/8qBB0J6mMg6XCq9ZmoQs+uul72rO/Z3sKLVk+glYAjhkRCDtDmrAGa3N63mZUcvyr9gL
qVHBItTWb6pI1vE3i5AsuIpFNxx1P6HCWHqFEnUJ2UnWH8FUQpzs6ncL3hJOp38wzvsBvV9fNuR9
IPxrQ315hEGR4AtLVk4z7NWLCh3Eg/HvWUlLCdEaKdG1Sv1kaHS9sFu/shgKd7VMLiQr3vAUE/D5
p1hmegyJZ8Q18Kw8eYbCCVxAtoEgOeoaW8NWs1Df3P1cL4sASpJMfjDXlrq9QQjWN1DLnXXnyDZ0
Tn/AgvU93FDlhbhx1W6n9VBG1U0bqCSIAFHHqrhBZEp1iWGqVeuaA5DdQgjoO3WrIgA/ZLZZKZeE
6c6rhitngs2+xmpJ/wegC3YBhAK/RX3C4j0yP35ovJEmiDETniVJekbdQAATad1MHBIrZrYErlmh
WK853PGO0UelwniE49m0VYGBaWMiJMTPbWoT08BItCIdMg2Ir8UlA85uXAOe5W1l5YH5tNwkZRL+
dUafpNFkp4eYN5xisq3JqmiWY9ttGrnam1eDlPuMhFcAZJvNZPQsRz3RBM8RCOsunks+wNScTmy1
CvNlPURU/EqjfDGJLDthmuTIgIVSdtyuh4yD0X9QcwEGsFFufv6uOmvE27bx0lHkpbR9BF+4sRof
jhbHqinFOL9OK7SKCDKu+HUt3CJKzQSnOmmu+Ya9ZZeu+GaXxJW1hM3yTDJU/cyoXML/B8gSX3Pq
mxIN2Jges/ExX+zScN4BK3qrKH/QNFs0Q9mVleA97Z/caAKeyaCx8COy//1IPxljK0bMm21egdEG
rcXWQNUvQah7YklbgB0j+FUibZeD6LI+52Kojvg9siHEbU3Sfc/mpewLaNm+pERLqs/khQlP5gyo
CN3NzSOip842w0eqPrhs6i0HfP7Xus/XwQeJet0HiqSFjQdYSPzxvoOy/ekgmXJtgZMZEUWv7vcS
+fDN6lxl/XDV/3Tkf8msx6g38R71xes5QhBHyE6rzzauTZvdLOhMXp63Y5Ef65TDqzlvqe5LgeC6
+6NuxYql91NObeezTrqh/Uz405gGEjT5G3uWyAxD/RBGPmmfRiVTwAm9neS+qX/vS/Uap2P8z2U6
4C38Q4SPZ/AL6wz8So8dxl+xJpaCddErOY6VgxI1CI2NfQwa/jqVx0z+jBfH3V/Na6oDb8gcpNb/
j1N5hok/z58iS/rM7cRTlrLtu0/+/tm9ActVRIJ1ZeAwLSlfcY4JSt1K7qsAJTeF5Qp/aoaB9MEV
jvQcjtyMuRfMcdn9WMLBsj680nHWjK5qVSyoxNGtnIunGy2R0wS4nhCkTuMz2Mc4OdOo92ScgMet
n89Sr3408WrEsuQqcQt6VttC+wwFUjHFhtYQTi2kSMebGEJ/qQePIwe+ngp+Y2RuhTp9CsIt3reQ
ysURB0BnuvbM4mkVXgPnW9sGad92Iq7b8t2ik9Bw4VELX0bNcLkXiD32aJAzTJaA1KIlE5GQQn4d
dIjSwPPHDQv9oNQAiCqMSuIKRU97s/CSt6Hi+jrsbo7m4jYVymPK95psyKawb1t1dRFnjIV3pAmC
wdRshbhsqh2FYx9TxMGqnBNlCVhey/1sB4Fndm2BA0IuBoyNMTUXN16zbzEIGdA1zzGwMhekrgpN
Gl5GlApy0fPnkjVdhc+GRg85Xv/efRrmqcWVFalk4FDnu8S70pQiIcUwdTGNw9OEZMa9tSjtbhug
0tT9jLgArpG5M+6aq7QqdnxOqMh61OpsyTupDhTuEhf+sqBWsH0hSUBbEBNWwL3WhuoOs/OsYB6s
qLQ4E+PV5n52LYJSl/UslnvdbI34nu3FxLMCXxMO831Cd0tJRfLpcEQ8HE0x5MttnjP++iS0UhTX
+0807N2KF4k8GCdimDdHPHu+iCP5pf/wgUAeWEIxZTtGaZWLSzQFZB68NE1L9opH3Hq19Mm2aUGe
EArJ4PVCVthjieUzbArFwgoICavPpJdZMPu2d5bWvcSrSoh1qCm5smnXUjT7Su5GM+8iIsprIf8U
97a7GIfUm/pj3fE+PsHIzL+OrbQ4tUNhOf7jQeVCtlujVVrpa7VQPnl/TnABHrY7gXY5HfahFb4N
Ic2NF2/fz8eFI0Gv5DsVbN29J+iCtaeMrg5LVItgiWeomhbG+UQbzYzTOpTY3kUcA1pCpkwZgVom
mX9Qjxe3Eqot8NfHUBf/84R4LMvy4ulGjKi6tE1yR90lV2Yncdzs2xQwREdO9JbX/XEK069SKV0V
rz5DjxtkE7w/NSk6Rv5SNLCWWEfjiMiVSafFdPohpm3wcwkALYwXltZxY80cXg1sicRBYuCU9+ML
A/ICTGyVu2MD6v5pQ7v9Wpgwqmq1llIOyUFBS/IlY1roK4lAE50T1IexogunzKVJ0X9EWY2f7lQ4
Q8nQPIV/UYp4Bdc0gIqr+Evs1AWqJCS5ntTber+o8AIhzpJQ6LJuc90Qkr8unQSS6uTaaqw3QVca
RPINhaA00Q4M7SPhBIlcgr3Q/qQblouuMShAsBGtyfEgPenR3nq0EPifW44y3P8mtcZMZpHl88JV
fB72B8DIPHrWONyU6htiNrDFWva/hMoB5IG4KX1U6VYIMTFYZ7vm7SGEy2RLQti3r+auMe2mTRxC
xw+EGaBYlmSvd6FXUiJrXXhLWjH1V0gpk3kKx6Ia/MEVZSzqcKRPhDLGCw1M6UUAvBGNAqaEvNFC
LDUCIwN9+t1sGnR9apsb225lkZy5/4kvxnFptApKMKyzxfdS6t6vfYpBQoNp9NL6EULO4gmHGYKE
O2hNBQbRUoJFsXcevkbzWARqfBD0eXreLceMxo7hUMCqccHdydbJHgTi3FlebSy750/E6BHvZHYO
G6/oLT8USzNsnG30eouoQN3TDKjNhegqJDgR8vRRTdK/udO9+LC7b6/B8WjQr6pVhpk97jChTjIo
eUoz+LlCD0INvSn+jYEQUHMIx/fTJIYoMjFv0AYGsX9RFVHQbGxHiF/zBL89JUK5LSZfUCDBfvGg
yu/RTusU5k/ZAYJXJdhbqQ6tqgpfwxCQb989/rOthb3HoTbwN4KIYmiRGDYV27+ZX/0bojxOSZpY
V32GlSoO5Akr2diASgL7tjfS9s4uxsGx0l8RZGfyLJNxYiMqogmlXMTW5000qvPStoQZpJguZYwr
nrJViM1C+M3/zodtmyABH65On2N2X5RErJokU8EmCX8Qv4u10wLybSvtCsB5+HWfyRDTgCcnZkgQ
YwH34PIhCVVHjshk9TmHq2U6ciUVYnBY9n7h5NtknUCvqX8A+zVy6JnzyQ6lL6sTo2uaUfMbO8Pp
JlpTuw7cg+gOQySbxYbMnJ/d8XdTCG9NYaMMRGG8w1dhO/syKB0WdGYlDtNIn1amtGalr5EXEEEL
gfOHVbQHM3dqGpI5NFcpSDJXeG9kRIhtqeDbPPUhJkq8cRHwu85mPxPE0Ypbt0IMuwV4/Qt7WDX1
3Rb3/zPIb0+cgjD4hBI/ssHsD0KlwDcG+jE9ZlU7NGV1ZhUcB3ppk+j0JrAShHHRHDXGV2pDvo66
vH2LvaW2Y5NCHFusN873Hgug1Ti5aMED/HuqBgANGkZfYbhuKdmUpICUA+ob5vC3bpCg/Pnasi5d
PNrQetAC7VLj/hwGsd6KEODz2RzIkzt+3C8xebGTG8+VhLiewwPp6H5O0fQaW/fu+V2U5xuCkTm4
mgE4EzPPQoeACu37JRh7qmMVUWR/nQ7xuRSbuaD7c73buuaTFZUAr4i2liUHi76Q3ulFmuAu1wef
FSldlq+KaawhU3fRJJMmrbO1YqTWr4yc8TmbBD8dFal9jXu011vswqQP1Svuq+96sYjhGrQLA9zL
+briSaQJW9HpP+dEpNsFKVkY7rdxHKgUYcrNxWbveT46YGZoLnN8YHxp17vKJ7oW2IhiUjbfkNb6
cygHFP+CGIgOsNFzgmCXHeLnmjFiQLgJb1UxxNgJ4cRUNH2ObCrgUnJM1BapvteqtpRVzCO/mqj0
kuF2H7DtTaq1obaSZPFkJODhGN7TzypfbFMPPFtMwTgnJ7ztcin2O6NECMpRie5q0FZqSHKthz4f
oIG241VMOf0u99APh8ZXH81TA4HcPHTegrjb1XAdQkSLg0FSz2+uZSKWlkRpGoAwQm7QGii5HZx3
XapENLI1/OLJAFFPESNTrI6Utg28Dx4S/VS5fzoBf9FjJSJia/M44ZSMNdELxM8goW0eR+C/XmZ1
YYoZSi3r/uSxKcOXdFMmjJQEDtfAiYmJhNvVn5XbOgnB/lRJy6cDC/Z0GZWKtSnijN0fpgFyrAqx
JMkfPuxpkiYC/AXIEmYylIaJP2l0XqOCJ+IkRoS6VPHZIrhvr3If0WIkVhVEVVtd713fUtoHcfwh
7bt4pZqD1kX/lJkUM7IaE6fkFPw4dk+HJiDtawiGcmYR3dBnFWA1VmC++ZuOTGjCK5VE84kVX5hn
NLK36eNe31Cgh0hdtoOR/qD4rjTuCOuvAS1c+DZ6IZTS0gARlVb5ub1sKsJxxmyqNXwN/q0icq0l
OfyuL7iUl2R/U73FfbEE4O+yCU6O3FDFost4xnx7inGNklnQ1DH2ClpcNTM67tdeQyuEa5YWyaYw
LsUuMrBRRNvNOj7EDfay27P32N0B8QuB6puzLtlevC9K9HbPl7Q9YtDdQMJC7r+JQzB0hsuae2yL
fpuNOUCEZnqXTHhhnJK6+KjCnq48mpvkuS+/zwXM2yo/XQVnVBWNCxdb4sAbPsdSiSXaSG7B9MNW
Gw3NYVqW3oCW60HxV6VX85gH9U0G5EQw+YqNsbHRsfnBLC/k+sl+Y9YNkJiflxAlmP2DqHyo7dUy
TiXUJfCl5LzizFpIcourutDvw8sJln2rygHKU9ftnGrRPGsm34ztPT509C7DoUh7tuAVD9IhKkYP
0DjrgSads4E47rq6eXk7JqUCMTPCQb8Q6ynHYPoVrKNydfoKtyPz6/0WZAthM0gXB1MdJl0Xa36q
vhqts1kESjjzC0zlLNybGYw7aqF8oru0Q6bZfKnltBLN6xKyv2/UlYQSsGl8nHzNLkcWdcKenMjA
mwE/7htHFHcsYs2gtZCDksYksUJFTTxFd8Pta7V8KRJ7rMzl0ZfeAEqRsWSGWWHv1GylfmYgCnIy
4Zmvc+7w4kGcc5L8Hyts8CcFNgkhSXP/+AA1wUAOvJgK4npFNMFxltTxJ89iZS6HojMyUgePh+yp
aycqHmj5O29v2izRLrVLdWegPhMfxKByg6cBoj8vuasSvJSnhB+jko0h4z4XIsRVt0hExtRPEEAp
2mpN0QyPK0/NhisPQIxpZTOWytZoKQoAOLQQx8SpgxNhp06Yjt5ZNnrw+XOY9Y6/eyMHCXe43pfp
P0Fo3FiTgHH9ZZ4jjWmbgkOJgN0+of0Dzngzngx4keVcqBe2eU3FWEaMZglyezJzEdaXpRQn6ehy
cs289qq5p9WHNc8r0dNCAirupC1fz0KnNMSUmlEz1YOgtIAbIjGpvZmziQ09UVQHe4auHOvMsmhR
ZA2D3OHg7bEeGvyY58h9zFMOMZLeKmJnefTRFa8xJnEL+LdL2IAEu/IMOR/wwNntnVeqgiPLvRrI
4ckBJe16qSzID+3EYskNMVQ9a7f3iv0qMmcf0mzl5/qujb8qyXddJHRayrCDLC2jMUze1hcUfmRP
eChMJ72aUP/ZjJyjmmTe/V37ayc3q5PgtUQm+A5ESVxT0/LCVOpyy55hu0l2z9wIQF+J22Fltzt8
dPIaMUo+sy3Nx/rv+XzXsHsEr2lqGyxdYCMa+pKbkCIbUU1pkybpMeAXHf7adft6KMpmAsDxjA4/
lgBqXI5a5c960Gp2RIo4iDnah/+entWXwEMLIyfgqpKFq/PGso1IazO9YrIxNiGkJxLxENdJ4s0u
GlcHenJrweuTt8YOhuGzjyHG4tuwmIbA6tWnf1VqVVt8QZuPfCblW+Gr5soEZt3E/ZAGc5dOo3oi
5/I5CetEMwxXJ8S86riOGmQj8Xb3Qengt07M5nqp9aYtZl19D9Ep+7Iou1zfFmPsZTPBlkXM2HXL
mv4i2AA3IjOP2cHi+ktp1ZXYpDU9OFnqt3WSRPaJvTRRNlX1pHRGcqvXD8cF6cp4DS0P/lQVAoVW
zob/UcGBySEAkg9u1fuL9czvO3s2GCrrL613WXX4ilvmxZ1NqjotuQ1mjhEsmtypCZmFdpn9UIcj
kJvDFwXu3KWBFFKv27fTNYPOI+BWxIpK8v7IgrVaVkNHBknjqsGGSBsMLeu5Tx0UwbNCIo0VAi39
pMxRZI+jGXZ+WtzbjErRKY9lCrLFHSowbuzE0cbtvslRUPvi6umicFRnx4VqjiVyvhwIb0Ce/klB
UsdBKjZxghkNXzjAn8FR9/hfUpMc+uoZ1+AgBFM2GfX0wdYcxLBCVtipID5VDZMLuuUz9z+RELKP
gl2LFkRJ/aNx/VrYR+8PuifGJeYNntdBHS1nBPJJbo+uPkw1EOVuM2VB5Chv2hR6UoRKOfS/mnGg
JAzpNwjHS9ArFlFleiX6GrvwxdGt84zWaXzf7baXPqVWdbyHTyH9xHbimdh2bsQHXgrMKcmBC84e
Ora6tpzZz173ViYCV59mcwg7b359rpnPXo1Cflporn+dHQslaSI3Uf50og+BgJ/mdHV9n1hCG2As
p1bZRNrfMpy6ZjIc0uAaZYXsNZaMQXK9zwWySxfuhTb0l3TOb8vLEDHHJBQFHcmLX6FaDwxZ1GXh
4XI4JT6iffPDiaw341wDtxDJ4UZyN7txiG+Ugk5tG7P7fdoDkB3xd9nq7DirnSU4GOfY34jIHDko
1QygFiQpvsd3tCW40TpbwOO7wZsYXpmyOkGG93J//Gs1lhNjzya0gonNH7eSqKGRNTEHWV40AUMF
Ka53TA56+VbfT9i62R+2HRTylS8tIf06TSjYU4d1v+D2WFfavApKZ90mEE1qfJuKJrK8N2qw0ZqZ
mhBbL8ftDG+glwY+H2NCP87VQJA/RmqjwQ2sFOd/lo+Zpl3SeFrZ9eDluohyYBcZBIWEhdLDEr75
qwxViIV6+PP6ugwbU2Z70nWhKdmJTc+EyonWDZKsGa97yFsbrqYHvu6cPPhsTM0L7BHGP9BSNC12
YH4GK+6vSeID/oxCks82J4dq4EC5NIVcaRgG1thRiK35GmFdi/W0riCHdmqp+NdawdxJMioPlgJj
kfdmfxEprtvzBpUk18YLlIlZ6QfQRsMk0GXs7aLsGydG1HrGkrqp0GK/LyKMPWNO8bavFRL3cW5p
HHK8nUGt681QTLv8eFctB4ljFeK1RPZKwVLXCQlmHHf1AOPP/8f7Kyw9fMqeKFVMrwsZ/zCkAgA4
jcGfl+fuBCp0YIOJob2Ar0ykYHQBabNRvxCqzCCUKnkT3ElZ0hfdrexCN33ZSiptm6uVKbre/F6h
mzKHbFlbh8HhvrwvCBUe6dnoSkUkosUo5u4CqKeM8qvDdtAMKJClupKq+wc3wSyVbC0Sl+KXQx8m
L4AJiYcsfIeHbZhBFEcizwZTLPKckl3V3JtQGvOZAedWxdv28awDXYU/nfuTk0wUoppas0acq2Rq
g2EDXlOp9QxHuzq4T3hDx6sPmc8A1PVyEFJ+2cwZgi296xTLYnnTArPXmeeQmPbM2ZXI9YqM2kLI
snAjlDsNfcNGOQdKweLWouO0PfRpJx3gqySmstkzVsz99mVHHR5maqpw3jVgJoho0UwMc4UTgQP/
Wt1QOKSEQQhkRZg///wZDyDQRkNZaKHfksLuLDKplNQzM5HmMTdNR2yoscZQ2iBrWWPfuKG60vSP
zPekoPEOPRpkn6IN8vprAnl6kZeMJ6hBLnYC6x5o62+1BsvrKMxZgRjzNiGndy2lMTaOpYhCgIvP
5sMmFEqPVrfbXbMn4hwhXl8S5lGUmXfJi6QBn0lm5rb/CENODbLdPlivLg0hS/RnGlTalvdKC9kS
6QjSWOLkgayQdOysahrIPwXp0Tm7OvhWFpZv0nXu6lKRGZYqHxHCRxZh7djbr1c4XbkBJxQnE4o+
+xka+emNUnMBX+iSoswT6hy9DPqH3oNtwf1fcogzfeGS976DrLIvSfInnY521zEkc929XKtmAlFh
aLaYrsTU+LnqsEaFRZzja32BHNreXEetkGwx3TVlPYNdBnmiLd7yaS86seP6dWGu/f0zm2E88S81
rt6DiG+bZI2X5lGbR0+fhxGOUcCMjsotlVYIP2BUmyYkJfdhJeToGiZbKnTaN5oETAzY3yb/Y6/d
k+NnQW4LX91gAsOu7LSy5I7yjMPmUdsMMUfmrO5xvxyuMxSALnbmYvszvsEKKCvK9bZw7EPAIZYX
RMuj6NRdTMQ4BcE/tAZVAKjnQ5tNEdj19OXMv11PbfQtcT7dApaqtdrTeznH3OQ8wYrsyMJzwav1
OgYL/QYoF2ozWU5rVsXu+U7qaV/AHVQpu3KeRvcdC+NRULwR68LsVbNT97BCmlXdNYqr6vrg9B5u
NpGTPMqDQy5zWIW+GBh64NCCt9kwVQCCHFW3vw8H/H0nDdcI8aVELU8+eurH3uNfVAInHGGpaA5x
kboVkUeFAP33/fEOP0UKOs8zF/kxzEpPHbvm07IDWYPt23yOiqhJWDKuDGP/6LrWN8J0TvXK5Pur
j3yBql++gL5DoPcJaY436+FhsXCJA4A+J3ezDFXCCgUuK9ytX/8qcuPiUYRWgQYem9qgLbBSSryC
tZyk4WeSSF7IFZkQqSabyVy+dj9cjlV7aNAZy21KyA0e+si2MXhO/d9JePdUZ6DfL8jMfOLG57te
EhET54MBSuzRxFwSE9nNQ4cbeOHQM3c6xrM0NHYCGpgmCxuWSlt/ICpNhObIMKONDWk4X0kOzNzB
DAC8sA1vlTWMoB8OLRNd/X2oLcERMIeLjXsr8KvijEMA2ouLpfPaYR/f/IvHK/OP3Wxf8Csq12b0
F9XwI0zG/dfe/rZaHDbzUsoL1VQMs+n9Vil4xY0wZDJi+Fcr76FqAIwEuZ5Gmet9RK4vJiCAKAlA
iXYZTm6vA6CUjn3qCcqx9U82eSIe6RXw/py+aD1A+Va/FQBREvssVNuWWnQv/+npBlDkzP4QnkNG
NaAm9oRF8/ZCwwGSF5ynWUjsK0EDM+WGfFKTItIJ52L6K2f8Dgzax8WnVM2AuBlsSLoIJKQF0jIq
hYsJk+5o4zEQulxKf+mfPSiX/RfCxw3GWSTKn+s656MUxJqDmDNoIVtxuNZmfOI5y6MXh6lGCTXv
Lg59C9sQeb7hiUtd8+WZwsQdcmRgkZmld9xIKrVEXN9ahy5crm64iHPBa9o+wLDz2RnO2Czq3OWa
xASNpWMGUmMBMnUeAYC5/noxNwcSapMl40mS7db1PDmUVNQ9gRJDa+fh5gG1tYezQuvM88Hmr65T
cTANjH3UUNRMkvIblTdeern935sym4BxByGoxZeIU1dEdL/TnsjqyLqMnoTF7IZEPoQLipi9v2/U
H5Kyy15jHdgLtayR5bLOIBj3PSgCvHCmEhkwb1McbqFHFARzAdiIlSWQLqJQEXvfSrjf9P4YlfvH
PTTnd+ksRKxoIeIXD9xR2X4BwiZOiyQxHiEhwzIq4GZDbsevw47vrhyOM9KInh2TbVKYoYDm7T9p
1wp5Lqbli7/WkbACktVLuCm2bazSgaf5oWG8jqQk6zmnUvgNR5kPwvLTvVTkMwZuZ1QqMej2HEa3
FsWc/TKarMfn4E2zhoa3MkXueMq6wapWU1cKt+1oWlP6DPbZmkLE6qQ3C5skQ66uFUh4Uq5/7U1l
V0Y6Rl2vDIye+n8hE80MqG49EpqUqrikHE3M7EjCfcg1is+33zZPdBWCD1h5zhOX4GZSMRroxzwB
SfC3jbpraCQYt+UoDuLyItz7dXzYvAii+ZBOfkNNxZv91OKAuAzWt4ZlbBO7wINfva2u4W2KrIK5
JSMpbMQiUEm8woHOPuCVjMb5i0S4UtU3AVdPYVYA9L2Rr6koX4dBiUwvbRko9+juOq0/wgRKOO1x
AwIQzGxmuH8E0O81bLJKJ38RjcYPxkosw47DUUT4hnwLFs+9c5KCawz3LzMSmJe7CmgRwJX+nCHM
ZuaanHjw1AfPMoJhWVv6Qcmis9g26yUtXy54GHvjPeN3DWojHvIZobJwOFdR+3J4xFaXFaKG518n
E1vF6sCHXYSrryaJ5uIX5ySs/w7CKl6XlOA80oRJ6Ktq3wzondmM+6u41G2ppfCEmu7K4PCUP6E8
iNFVM/sN4Fyo99g81OO6eww0b93A61adReaMVKr16zYdzbiUF45i8w0/PfNNhI+2PiCss/v2vgFo
n3UOvluWAGP+lGznO3rGpC+BSzPbXaiYUZMLDtODFWMoS+6EZJSi5Qwf1tI7NUBRF/aecOEk/Nbm
2iUCdF5Sa86FqmP4IUuoV/WPgT6ZwKlxT4n8JZqyDrN5lrqtwjqmEYWbZHdjBaGOLsEoG1v02cNz
CjYeIFe3+MC4FvuTSpXzMXZOoktyAEH98bLukFETPcpZhEF+POYTiM5AewRCeZYUWg+5gcdTHZHE
rP3u3YwM3FkIVi/IClhUUKaXq/dd/J9IIce/fJzFjNyqHoH9OOgt28SLVd6+i0ohGqiXEnXN4TDL
GhG+CcOTiE0k2a2RXrE1TZ+ElLUJxJrt85WX2Uv6xOxC4R92nMdLA2EuuoYbM7MajPmkERymA3Fx
p9ndP8Zv6FQs9mq9mV1gZvtEflDvo73jABQ34UZI48BHtLtRMQrhY5gzxmWGP+/uiX6Qy9/2Dm2y
XLSJXR4ansyAFutRlf7H05J6w75ri9CiW7A7tq3Zmq5/1t3e9WyG02yL9+bf74Qgah5Pz66RMnfk
hTB4cFwzJBf718lMkfD42r7obIPuInmxUUnPWBzE1PV/Jha5/9j4Xkv+4GlMcsFb8lDqw4Wv4mor
i9Mq8L2XIIno9o5brrOV2E5eerxMFSrXAb7jejQt4L4FZ2e89qe9HyN8EMIazikmlwd/3crjo3ME
yC1wbN19wCu6IW7spNyePP+LCkg8xAApkj3F9As4T5m4mMaI3xEMXFi76BsiIVe8AaZRvNsX21Cp
GPu4kyXOGLSD93ZZaSsBnd8NOiF4pVf1IIlus5mTsR5TAAqAhHOQrfMDxzqfk2MraDxbEeCR8miQ
PEBbORmLo4KIdi3IajVTz7bKnAGzlDqWA3vWc/z8czJXoQD3xfWEedKgmDBozXjRrvoYdmgG7g0X
lSxigXXQUUQYpAfd0qAw/GBDH16PP8EzM6/G85Sq8c/P6aRlWxL38fcVb950SUL0xqxk4rhQ1+/e
+QVOS5dQDCpsYb+se3XquvkhElF5RxeWyWx7/VNVo6eDCY90Icqlj8ivV2FZ6lYvXRCqJg/fErmg
mW9ARFP/rJMQZ+AK5PTbtU62t6/EexcORCENTS7RyRTEk1H7fWk8Ehkmv9x2UyK31sdJjKPiCwU0
U+r1pAe78V1Yl2A0hZLHoRCtF80GT4hLvAnkJyx836V0XpzPHn8Nqfi0E5zW2gwOPiMmj4/0trmO
4jUoJ4Fzs/ZsGfnQXxzArCaLYob68Wfpn9UBoa6N5SzE1gNgECww7kzwQGEFEPRuR5NxQTsDOFnt
tkmQA8q8pa1V69Wjk0uznoHTk02sRSwbj1IAE3Cvy7sX+F7uanwKx/Qk0ZGKJkMKL9u1/Wyq9xIZ
Uad9+dxPGo+coiClFJVK/vMNjo9GOYQ/ap5OVlvrArFNG8nUsJ1AzQ/nSU7oE1dovnSpGQI/wfUW
8VV+EpwhqyKc4VAPaiW0FpbeY+QWwdaH8WOB9L5j4OhSjFeSEMLWIn/tnyVKjghRY5dmf1UFRn34
X76nVO267SwYY/3lTJGji2lPBVamozDWdpnTanw8ZtE857/ODggOxtk3gIGfuFZbg6Fcia9pqVcX
Sj9IJC17B4ti6vzcjz7Qj4BDTV+YcVrKPV7WXD3AmXB9ZQBoZtkhGB7faV+XNP83r3DREQXK5Wpu
1sGzHboMhgVvqx7T7n0vhNWgwzI8iji0TFxyWVX2H80wENKXDfOCup/GMEdrpwWUZgCSxe/u12zz
Ku7ecHovK6M9HYdqF0DRI95ywK3KfAa2T0JehTPH0L4tyrZkqwPo1UdYh3pqHJ3q5SD3Jq4RWX92
phhsf/iswwoIwhBaJOzz4nptiS5nC8t3LYFr7b0BLhFE3pLgQ0FGnfKc/ZuhbRgHbDZm9woeg36K
yz3FS06VsMrhPhTQVuaiOIOhlYm4JFWnxrc64daLjz0q1WhLFrNCWfcuu/1zmOJClDmLaVgR19rr
dd7vtvYj6f4ScG0NpYx0rFAC9eeg58GvcVn/2wHvVJWULCz7HBw0TckyzYkEF6wKvMwJJrC13aj3
nh5TgsLJ5uqGU6FbDHDLPr3P2N9kSmnvzztFnCd7g+LXSqCpghaJEaylt5vpfB1vDiZOwBG4ma+a
ib8JK4Q6XmhAjbaK+REGH1LeBSkxPpnH7+UWHvbvnMRfiZilEdssWUksRQ0aRDA0N6JfeV0Pilu8
1rXqK1RlIkczd/vPNufJEdjuXQAFraxvPC0icw0Ct/2wwtwA/WbPvq4NY2RVr81j6s/HfGHbrnhO
LGXAS8NFyHTDjIlxB1Tb8IalgZFFqCMA2xr6N8SzhKsbNVxLtEK6Sx0/dROf0LQiQ0N4jr7TQuIx
vTQh/u6kIaOWwtuIET0VrkszGU65gmetfhfDYdCoYtW/q0Krqfxz7GARxAig1oLJlo8NetCeOOHK
lir0bi4QC9qmydvk/H0mK0QYKjw4rR0nbDQdQHGwyDSUvJ9TyoMI+8N+VcZ3an7Q2TLg6tPSN3HC
eavfE2nZCwQb/4dH9jkD5FwOXqr5AgYNMEKVL9pLVQU7GShT2CmuIRX6PRxyeN7OLT9XG73eJW6B
K0JjNTO/m0taHHjvK0rDx4RbovZeyti0w/zLNbtCyiUzg5hpjkfjUBrGod3ZI8SMjW9mgwhOvwZe
mTyRBbz2YZMvSBlWhsSNu/JsWOpHNNp8rvyCMX6Dq8Hy6KHH1SdCEaWBsNB9liCQl4MD/fnYpZLW
LCwz3Ctv2832yGdjN0YMGQwm50mx4ftqBFJsK7Asu76A5j9S4I8nIcP76SJChMzK8Iiy7kRPrlzD
B0/NY5adkLxtcHQtRWJx8euetS/9Sq5KBT9usfJ8epNt9Sz+p650fYK4YYIY1AKg09Pbi1ruhA4M
F+qwe3OGkpEIGbChIZK17UndPXRr0PmSR3VU+NsAV66FbGgLbXDzW/6KG7ELhyycEDSE1TKIIZ01
T2+hgipKMPvMhlvNSF5hEGpW6RchgyJmqXvZs+R71EddG9+wDcXOKEw1TMvjt1HeiXcVZgUvcZYP
BSeqpUASdVTwTj6dVVqC3Lze0Fe/5m7E1FORokpvOH/gfB9oB3jfJsofiGtk9exY2kW0a9VJ8rU7
QKet+lhMoMNrPnOy1s3KVnm/ZQtppkXrbS7GnWcBnoGfmYYA56stlTJ9EbWAvNtP40O1Y/SMJCPY
aDA+FrHWoC1l3jjiFgM1lrWJMrKhrJ/ptg/5NJSYvpmLvCh/JMjkAaadljmBMKGlFnkbuRxBj1oK
uDvB9WieMJ960bgyko7VuPmIV5uitQMyO8AMIgeaeFpo2DT78gKxW5BwDBIHtJ1mzv5uYih3xpAy
TQ7szAKXVGOoYCE6/EmVQ3VGZdavewtT/nk7YwfIPwLqzEzon4zrjUxNNrQ0v5fj2DZh6ohwa8YK
2zNmVtagLcfMme80PtI0scRhewdaxh4K73BZpG8Js8yh1sV/XTub4cPYsCK56LuKaVBnJ+jiP00+
7B4iCgOFJ0587Avt4f2IUrozetwuIc7/bHgov6BTobFsVbr7Ng/pEUw1pW14yzeqUaeWp3Abhp68
15LmMjwVw8IAquDnJGcFetrYWk2g5JGrTpV3RPjVrxGgflq5pXrDBhSHKaRw75zBNa7U4RrulmPI
9vjvhx9lZN8WLJXaOTbTNfc+ootcgT7UH97ZlJ/TzyqtfSlxEZX9Yg/D0MR79FVvi7qvNMAXrawU
R5sgRFOisirjRPcqIPcc9wJy6Zm9ZNi5janpTxiwjIVdKBgMGbMqEcBLCBLqMzI6z1BSM/7f6Yd9
K9AqnCrvp8WAg6H1yWcZZOjAT5F37hLeQ8Sr5IRnuUs+aDRlNA9HSGPIT2ddpbB/TI41HTpUTbYR
6PuQ6DADvx+SqXSZr2BPzwHWQkI0LRuRf4SDhW0IuJyX6i79aZcKEtjrn+XEYkgX9q/FEaPJE3HF
DOE2tPRR5i1Uv+vBpalnyGf6cMLQhv6NjmrnyzNFyL5yAw95wvS07uGhF5LEJubqmd/W+3IVJRjl
yo5YlK0Jjp9B8cg/v+WEp80qpwSooilYhKdSTwXPgrj4ATMJnBlAItwGBxaKnoAH4UElN7Fi3XzU
NqmCUBoBbjIP8h/cMIl2uFg66fhScjDROFK9dU8rYTiyseW8xGZNmffE5M7V7pO3zyrSpj/Udaj8
hcfc5/LQ/Eea6koBCDiCRFKS21GlEy7HcJCvbPAlWj4inWnKCZaQs72Wq3HkNPCUAZrku1Lm1ug2
9MeE8uXrbJYOkrIYE5M7iH37mvhv8n6DQmkl5JX8CwdexawPAmx6OovCAPh26OVLjuGiLAJhELOR
/NMfGVMrUaohzuSSJfCl94lSSPlE+A/IL0HZXNAp+azPr/5n6lE5ClnfE6FHMNRobiA+PXI2PCZ9
7W1MulZAVp/N+PVlLDKR+vzyWwI2CPrENHFqcNSYUMO17eZAcVEUY4qx9SOMzcOFgNXDELD4Mc89
fnznX8SdUfN0jd2eqe8sXbyJOm3rpduSohT+QRl4FFgNgixsGvdwuO1iYALbu0QYL3Tly8zGGQcw
uWQCNkfvJu6DRn1cOJQlcSjUrc025lNrd54RfU5O7xDqGvJGWkg244nebIIQBpsIIPidqPKo4pAU
649/4YQWkhpQmIjVG2lCb7c+/gposzzFaiNO0uKliXg46CLUOcgW4jHz7namk7geahZRSOMXEN9t
CNEXYAzYahjAYiBFr4ulF3TXBecqRjJ+6tKYzU0STVLFWdd0wa5BQLEgGqdiimpww/G1wCx6ucC/
eTCK/uLSbCW/i2Arjz/iDpLoqL99DZDWgutKuDeVIJ13rCT6n7Cv3QY76wRRJ62ueuBhVJxFtW7u
tqjZq59WxZWAIc2qpB7pk1dJ1/dG/KHVrwK7PO55bzJI4yOQUleb9D8WMOHDejHa7GCZjohH0UsJ
/2kFS7ABM5Y/39A3LCN9NP1owxEayQ4EGCXBy9EfOxjFpK4rGyphm/Gp3/t66de3FX+uuuAaodIA
UETVRzj5FoLHWvK6sHyC4Ua9K5JM+FemayLQ1NBTCBghnPTNNBI3iDZ2KmWVhH4dW70eVitfzgBA
RZxqgBusCotBTKw1TrcIkIewIafobiui5f9UaoF/BLjksC52Dp2ybHPWXhjCuT+B532qupvHoXXz
5OEszUj+/L6+FOFGQ0Gy4ZFS83xewIMpPxLJvSJ045iEWB4Vh/SCKrCIfTj2/fIiIkfRoaXCniG0
F3SBXURRHCs2BrhnH1uasN8YTzwEPy9dFQi7yga4nOqOMzJn/7UkXvzLzmCYSLK7iEFmtLF7NE2t
h4yW5JU3JA7D+AScQe00LzjM4LecPUHZ4yHS6zmT7tHVFfMgNUchGTF8iuzZU44ZiFMZaJjdrO6B
D96Up6jwx9fpgzcJoKlR8xzpkhE6vVEXJy5t5tA8eT7w03vs9GEKVPwwtvyz7bowJB4le2oddqYQ
EjgVsCRLX8oGfBZ+m0jpNaNaLdJT7YvPxnPtB+SLGfDW5kfvv1lGTQ6pFOXV2xJmxGhKmyFNDgY/
2ZIRi5A1OLLmXvdQe537MEFLVVgiN/VdJ2pcBZhU62vYRn/rmasAorZnBw/pqYK+yi0ioUOGPDvO
DYKJZUgss+NYzKFtDTxoVheI1/Kx6gnTI397PsqTr153C/C79yXEX7hHi0mQlEkzTQ7bEqyDQ9pl
17j9fH/SZnJQAz87YAfCywys9GnOgMLzUTS/vDsEERNdIRYHEbKtCbMve710TJSDqsvCtNiIfoip
BiLBISeipR9pARsw1lo/sb+d/zeeGAD/TvdXF95yHicC/X9S0rtkhaBVAsls69LEe+1xLfE7paC4
7qPf/gOJUFdoffYPUIqm75tY7TeW9W5aqMSa+8RpY6BS26bWefO3WBy0uj9GpjIcbPV7GC6oYgJX
Fjy53idzXbRToNStCRfTBoPzOcnTSOe6DfhRCPDhAv4U2RIA+/jiUXmM9WCkFa9ERhQ1onN39due
4R9zq249IgurzHMEXYSLRUOz4fXV/ZPwHPXUjZ5hKMNklmX0YsWS5B+jMB9jBzvYGxQQQz7AjGs+
HU9Xym4Zk57kX4TBPW0UJBQ/LcRwxHxEvRygdqCwk67gf3TeEGXnoE9ZFENXsK9oUw4r+3TYcfiA
kfB3itAspV0A1U5AHrv7iy4tBrcQxpeGUnHehijVIYtAkOX+LJYkh6i+zld3Fv7KZrKc4xcZLDov
/EHBxud6l+MXkQiGqBkObc0eqVotBzpIcLD0sH5YY0s7SnNIf0/jA3ZPBtFdW+t9gtcL5U2tV8Qb
X5tKLOpejYNzsvwhS0E1U/TV48r9CMMzeaRuXEO456fSPvDkzFT1O9G9WA+lVBM7huL/db3oqUD7
GQyUuKioFavRO7SS5/uiCOaYPEtl8g9vuBkxQ39ZG5JPsj8Dvk4x6FgKPu5Zu2xUtfHiRULLMjzA
iIMA/EEFtF45WBV0ztiAaoER7BAjhC3o+LqGedyuOpVBAJyARgFWZaD1bsCHTfxpl885PyJuwnwk
Bn+3oZO1Eb5QrG3VqHxJ+yKAi1dGUZ9EgdFNUMljAJ8dqbtdW/J7uJquuJmP1j9B9qtySQoH8gd6
v0fPx6UaEEHdmnv3RYdO6CYOYfk5bzBJHm5tDKGFgQEOzVj2QWrzEPjrIfttowrlqNZPMYFzkfDc
NZkyp9Kw0g==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
