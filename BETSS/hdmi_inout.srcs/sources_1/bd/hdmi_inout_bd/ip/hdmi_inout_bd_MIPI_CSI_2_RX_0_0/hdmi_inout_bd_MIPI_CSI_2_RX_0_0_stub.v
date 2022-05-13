// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May 11 23:39:28 2022
// Host        : DESKTOP-S7H1TQT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/DELL/Desktop/BETSS/hdmi_inout_po_konsultacji/hdmi_inout/hdmi_inout.srcs/sources_1/bd/hdmi_inout_bd/ip/hdmi_inout_bd_MIPI_CSI_2_RX_0_0/hdmi_inout_bd_MIPI_CSI_2_RX_0_0_stub.v
// Design      : hdmi_inout_bd_MIPI_CSI_2_RX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mipi_csi2_rx_top,Vivado 2019.1" *)
module hdmi_inout_bd_MIPI_CSI_2_RX_0_0(RxByteClkHS, aClkStopstate, aRxClkActiveHS, 
  RxDataHSD0, RxSyncHSD0, RxValidHSD0, RxActiveHSD0, aD0Enable, RxDataHSD1, RxSyncHSD1, 
  RxValidHSD1, RxActiveHSD1, aD1Enable, RxDataHSD2, RxSyncHSD2, RxValidHSD2, RxActiveHSD2, 
  aD2Enable, RxDataHSD3, RxSyncHSD3, RxValidHSD3, RxActiveHSD3, aD3Enable, aClkEnable, 
  m_axis_video_tdata, m_axis_video_tvalid, m_axis_video_tready, m_axis_video_tlast, 
  m_axis_video_tuser, video_aresetn, video_aclk)
/* synthesis syn_black_box black_box_pad_pin="RxByteClkHS,aClkStopstate,aRxClkActiveHS,RxDataHSD0[7:0],RxSyncHSD0,RxValidHSD0,RxActiveHSD0,aD0Enable,RxDataHSD1[7:0],RxSyncHSD1,RxValidHSD1,RxActiveHSD1,aD1Enable,RxDataHSD2[7:0],RxSyncHSD2,RxValidHSD2,RxActiveHSD2,aD2Enable,RxDataHSD3[7:0],RxSyncHSD3,RxValidHSD3,RxActiveHSD3,aD3Enable,aClkEnable,m_axis_video_tdata[39:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_tlast,m_axis_video_tuser[0:0],video_aresetn,video_aclk" */;
  input RxByteClkHS;
  input aClkStopstate;
  input aRxClkActiveHS;
  input [7:0]RxDataHSD0;
  input RxSyncHSD0;
  input RxValidHSD0;
  input RxActiveHSD0;
  output aD0Enable;
  input [7:0]RxDataHSD1;
  input RxSyncHSD1;
  input RxValidHSD1;
  input RxActiveHSD1;
  output aD1Enable;
  input [7:0]RxDataHSD2;
  input RxSyncHSD2;
  input RxValidHSD2;
  input RxActiveHSD2;
  output aD2Enable;
  input [7:0]RxDataHSD3;
  input RxSyncHSD3;
  input RxValidHSD3;
  input RxActiveHSD3;
  output aD3Enable;
  output aClkEnable;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  input video_aresetn;
  input video_aclk;
endmodule
