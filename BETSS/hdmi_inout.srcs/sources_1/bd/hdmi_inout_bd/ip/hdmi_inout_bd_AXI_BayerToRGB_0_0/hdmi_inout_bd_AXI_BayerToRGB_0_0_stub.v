// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May 11 23:38:42 2022
// Host        : DESKTOP-S7H1TQT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/DELL/Desktop/BETSS/hdmi_inout_po_konsultacji/hdmi_inout/hdmi_inout.srcs/sources_1/bd/hdmi_inout_bd/ip/hdmi_inout_bd_AXI_BayerToRGB_0_0/hdmi_inout_bd_AXI_BayerToRGB_0_0_stub.v
// Design      : hdmi_inout_bd_AXI_BayerToRGB_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_BayerToRGB,Vivado 2019.1" *)
module hdmi_inout_bd_AXI_BayerToRGB_0_0(StreamClk, sStreamReset_n, 
  s_axis_video_tready, s_axis_video_tdata, s_axis_video_tvalid, s_axis_video_tuser, 
  s_axis_video_tlast, m_axis_video_tready, m_axis_video_tdata, m_axis_video_tvalid, 
  m_axis_video_tuser, m_axis_video_tlast)
/* synthesis syn_black_box black_box_pad_pin="StreamClk,sStreamReset_n,s_axis_video_tready,s_axis_video_tdata[39:0],s_axis_video_tvalid,s_axis_video_tuser,s_axis_video_tlast,m_axis_video_tready,m_axis_video_tdata[31:0],m_axis_video_tvalid,m_axis_video_tuser,m_axis_video_tlast" */;
  input StreamClk;
  input sStreamReset_n;
  output s_axis_video_tready;
  input [39:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input m_axis_video_tready;
  output [31:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
endmodule
