// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Jan 10 18:23:56 2026
// Host        : sk-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/sk/Desktop/EcoAttention/ManhattanAttention/ManhattanAttention.gen/sources_1/bd/ManhattanAttention/ip/ManhattanAttention_axis_wrapper_0_0/ManhattanAttention_axis_wrapper_0_0_stub.v
// Design      : ManhattanAttention_axis_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_wrapper,Vivado 2023.2" *)
module ManhattanAttention_axis_wrapper_0_0(axi_clk, axi_reset_n, s_axis_data, 
  s_axis_valid, s_axis_tlast, s_axis_ready, m_axis_valid, m_axis_data, m_axis_ready, 
  m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="axi_reset_n,s_axis_data[127:0],s_axis_valid,s_axis_tlast,s_axis_ready,m_axis_valid,m_axis_data[31:0],m_axis_ready,m_axis_tlast" */
/* synthesis syn_force_seq_prim="axi_clk" */;
  input axi_clk /* synthesis syn_isclock = 1 */;
  input axi_reset_n;
  input [127:0]s_axis_data;
  input s_axis_valid;
  input s_axis_tlast;
  output s_axis_ready;
  output m_axis_valid;
  output [31:0]m_axis_data;
  input m_axis_ready;
  output m_axis_tlast;
endmodule
