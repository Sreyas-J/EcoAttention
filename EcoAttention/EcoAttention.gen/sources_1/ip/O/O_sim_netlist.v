// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Aug 11 22:29:32 2025
// Host        : dell-Inspiron-5415 running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top O -prefix
//               O_ Q_sim_netlist.v
// Design      : Q
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Q,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module O
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
  O_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19184)
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
