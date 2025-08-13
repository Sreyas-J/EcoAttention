// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug 13 09:06:46 2025
// Host        : a2468374ecf5 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top Q -prefix
//               Q_ K_sim_netlist.v
// Design      : K
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "K,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19184)
`pragma protect data_block
+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
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
