// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug 13 19:11:53 2025
// Host        : dell-Inspiron-5415 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top K -prefix
//               K_ Q_sim_netlist.v
// Design      : Q
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Q,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module K
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
  K_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
BEvddQ==
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
