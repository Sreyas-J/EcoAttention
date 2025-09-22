// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Sep 22 14:02:16 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [1:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;

  wire [1:0]addra;
  wire [1:0]addrb;
  wire clka;
  wire [127:0]dina;
  wire [127:0]doutb;
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
  wire [127:0]NLW_U0_douta_UNCONNECTED;
  wire [1:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.9322 mW" *) 
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
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
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
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[127:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53024)
`pragma protect data_block
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
+4wrNPQzCtjC1d+vtpA=
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
