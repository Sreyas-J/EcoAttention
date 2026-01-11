// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Jan  7 21:38:08 2026
// Host        : sk-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top O -prefix
//               O_ O_sim_netlist.v
// Design      : O
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "O,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.217997 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
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
  (* C_INIT_FILE = "O.mem" *) 
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
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  O_blk_mem_gen_v8_4_7 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20736)
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
