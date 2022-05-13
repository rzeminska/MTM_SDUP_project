// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed May 11 23:43:20 2022
// Host        : DESKTOP-S7H1TQT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hdmi_inout_bd_MIPI_D_PHY_RX_0_0_stub.v
// Design      : hdmi_inout_bd_MIPI_D_PHY_RX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "MIPI_DPHY_Receiver,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(dphy_clk_hs_p, dphy_clk_hs_n, dphy_clk_lp_p, 
  dphy_clk_lp_n, dphy_data_hs_p, dphy_data_hs_n, dphy_data_lp_p, dphy_data_lp_n, RefClk, aRst, 
  rDlyCtrlLockedOut, RxDDRClkHS, aRxClkActiveHS, aClkStopstate, aClkEnable, 
  aClkUlpsActiveNot, aRxUlpsClkNot, aClkForceRxmode, aClkErrControl, RxByteClkHS, 
  aD0Stopstate, aD0Enable, aD0UlpsActiveNot, rbD0RxDataHS, rbD0RxValidHS, rbD0RxActiveHS, 
  rbD0RxSyncHS, rbD0ErrSotHS, rbD0ErrSotSyncHS, aD0ForceRxmode, D0RxClkEsc, aD0RxDataEsc, 
  aD0RxValidEsc, aD0RxLpdtEsc, aD0RxUlpsEsc, aD0RxTriggerEsc, aD0ErrEsc, aD0ErrControl, 
  aD1Stopstate, aD1Enable, aD1UlpsActiveNot, rbD1RxDataHS, rbD1RxValidHS, rbD1RxActiveHS, 
  rbD1RxSyncHS, rbD1ErrSotHS, rbD1ErrSotSyncHS, aD1ForceRxmode, D1RxClkEsc, aD1RxDataEsc, 
  aD1RxValidEsc, aD1RxLpdtEsc, aD1RxUlpsEsc, aD1RxTriggerEsc, aD1ErrEsc, aD1ErrControl)
/* synthesis syn_black_box black_box_pad_pin="dphy_clk_hs_p,dphy_clk_hs_n,dphy_clk_lp_p,dphy_clk_lp_n,dphy_data_hs_p[1:0],dphy_data_hs_n[1:0],dphy_data_lp_p[1:0],dphy_data_lp_n[1:0],RefClk,aRst,rDlyCtrlLockedOut,RxDDRClkHS,aRxClkActiveHS,aClkStopstate,aClkEnable,aClkUlpsActiveNot,aRxUlpsClkNot,aClkForceRxmode,aClkErrControl,RxByteClkHS,aD0Stopstate,aD0Enable,aD0UlpsActiveNot,rbD0RxDataHS[7:0],rbD0RxValidHS,rbD0RxActiveHS,rbD0RxSyncHS,rbD0ErrSotHS,rbD0ErrSotSyncHS,aD0ForceRxmode,D0RxClkEsc,aD0RxDataEsc[7:0],aD0RxValidEsc,aD0RxLpdtEsc,aD0RxUlpsEsc,aD0RxTriggerEsc[3:0],aD0ErrEsc,aD0ErrControl,aD1Stopstate,aD1Enable,aD1UlpsActiveNot,rbD1RxDataHS[7:0],rbD1RxValidHS,rbD1RxActiveHS,rbD1RxSyncHS,rbD1ErrSotHS,rbD1ErrSotSyncHS,aD1ForceRxmode,D1RxClkEsc,aD1RxDataEsc[7:0],aD1RxValidEsc,aD1RxLpdtEsc,aD1RxUlpsEsc,aD1RxTriggerEsc[3:0],aD1ErrEsc,aD1ErrControl" */;
  input dphy_clk_hs_p;
  input dphy_clk_hs_n;
  input dphy_clk_lp_p;
  input dphy_clk_lp_n;
  input [1:0]dphy_data_hs_p;
  input [1:0]dphy_data_hs_n;
  input [1:0]dphy_data_lp_p;
  input [1:0]dphy_data_lp_n;
  input RefClk;
  input aRst;
  output rDlyCtrlLockedOut;
  output RxDDRClkHS;
  output aRxClkActiveHS;
  output aClkStopstate;
  input aClkEnable;
  output aClkUlpsActiveNot;
  output aRxUlpsClkNot;
  input aClkForceRxmode;
  output aClkErrControl;
  output RxByteClkHS;
  output aD0Stopstate;
  input aD0Enable;
  output aD0UlpsActiveNot;
  output [7:0]rbD0RxDataHS;
  output rbD0RxValidHS;
  output rbD0RxActiveHS;
  output rbD0RxSyncHS;
  output rbD0ErrSotHS;
  output rbD0ErrSotSyncHS;
  input aD0ForceRxmode;
  output D0RxClkEsc;
  output [7:0]aD0RxDataEsc;
  output aD0RxValidEsc;
  output aD0RxLpdtEsc;
  output aD0RxUlpsEsc;
  output [3:0]aD0RxTriggerEsc;
  output aD0ErrEsc;
  output aD0ErrControl;
  output aD1Stopstate;
  input aD1Enable;
  output aD1UlpsActiveNot;
  output [7:0]rbD1RxDataHS;
  output rbD1RxValidHS;
  output rbD1RxActiveHS;
  output rbD1RxSyncHS;
  output rbD1ErrSotHS;
  output rbD1ErrSotSyncHS;
  input aD1ForceRxmode;
  output D1RxClkEsc;
  output [7:0]aD1RxDataEsc;
  output aD1RxValidEsc;
  output aD1RxLpdtEsc;
  output aD1RxUlpsEsc;
  output [3:0]aD1RxTriggerEsc;
  output aD1ErrEsc;
  output aD1ErrControl;
endmodule
