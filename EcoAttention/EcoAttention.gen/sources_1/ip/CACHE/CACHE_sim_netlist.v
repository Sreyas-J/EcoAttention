// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Sep 18 21:44:54 2025
// Host        : sk-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sk/Desktop/EcoAttention/EcoAttention/EcoAttention.gen/sources_1/ip/CACHE/CACHE_sim_netlist.v
// Design      : CACHE
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CACHE,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module CACHE
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [1:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [1:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [1:0]addra;
  wire [1:0]addrb;
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
  wire [1:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "2" *) 
  (* C_ADDRB_WIDTH = "2" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
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
  (* C_INIT_FILE = "CACHE.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4" *) 
  (* C_READ_DEPTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "4" *) 
  (* C_WRITE_DEPTH_B = "4" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  CACHE_blk_mem_gen_v8_4_7 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[1:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[1:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19904)
`pragma protect data_block
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
zKvIxvPfAN/9PRE=
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
