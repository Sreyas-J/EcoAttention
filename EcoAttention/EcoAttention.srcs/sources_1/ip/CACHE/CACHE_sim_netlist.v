// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Jan  7 21:32:44 2026
// Host        : sk-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top CACHE -prefix
//               CACHE_ CACHE_sim_netlist.v
// Design      : CACHE
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.654222 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
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
  (* C_XDEVICEFAMILY = "zynquplus" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 56176)
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
