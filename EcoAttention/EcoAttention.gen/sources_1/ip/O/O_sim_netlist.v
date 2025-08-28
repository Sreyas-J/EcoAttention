// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Aug 25 19:02:43 2025
// Host        : sk-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sk/Desktop/EcoAttention/EcoAttention/EcoAttention.gen/sources_1/ip/O/O_sim_netlist.v
// Design      : O
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
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
  (* C_XDEVICEFAMILY = "artix7" *) 
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
