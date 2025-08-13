// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug 13 09:06:48 2025
// Host        : a2468374ecf5 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/EcoAttention/EcoAttention/EcoAttention.gen/sources_1/ip/K/K_sim_netlist.v
// Design      : K
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "K,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module K
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "K.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "42" *) 
  (* C_READ_DEPTH_B = "42" *) 
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
  (* C_WRITE_DEPTH_A = "42" *) 
  (* C_WRITE_DEPTH_B = "42" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  K_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19472)
`pragma protect data_block
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
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
