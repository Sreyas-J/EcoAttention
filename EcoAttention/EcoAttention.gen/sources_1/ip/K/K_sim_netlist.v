// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Aug 11 22:29:32 2025
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
