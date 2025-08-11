// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Aug 11 22:29:33 2025
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
  (* C_INIT_FILE = "Q.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "36" *) 
  (* C_READ_DEPTH_B = "36" *) 
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
  (* C_WRITE_DEPTH_A = "36" *) 
  (* C_WRITE_DEPTH_B = "36" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Q_blk_mem_gen_v8_4_6 U0
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
