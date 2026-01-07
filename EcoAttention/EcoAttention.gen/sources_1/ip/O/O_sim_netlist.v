// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Jan  7 21:38:09 2026
// Host        : sk-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sk/Desktop/EcoAttention/EcoAttention/EcoAttention.gen/sources_1/ip/O/O_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21024)
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
