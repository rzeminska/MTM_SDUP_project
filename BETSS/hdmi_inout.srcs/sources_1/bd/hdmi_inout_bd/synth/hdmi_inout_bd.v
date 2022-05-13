//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri May 13 18:58:00 2022
//Host        : DESKTOP-S7H1TQT running 64-bit major release  (build 9200)
//Command     : generate_target hdmi_inout_bd.bd
//Design      : hdmi_inout_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "hdmi_inout_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hdmi_inout_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=3,da_clkrst_cnt=1,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "hdmi_inout_bd.hwdef" *) 
module hdmi_inout_bd
   (dphy_clk_lp_n,
    dphy_clk_lp_p,
    dphy_data_hs_n,
    dphy_data_hs_p,
    dphy_data_lp_n,
    dphy_data_lp_p,
    dphy_hs_clock_clk_n,
    dphy_hs_clock_clk_p,
    hdmi_rx_hpd,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_data_n,
    hdmi_tx_data_p,
    reset_rtl,
    sys_clock);
  input dphy_clk_lp_n;
  input dphy_clk_lp_p;
  input [1:0]dphy_data_hs_n;
  input [1:0]dphy_data_hs_p;
  input [1:0]dphy_data_lp_n;
  input [1:0]dphy_data_lp_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dphy_hs_clock, CAN_DEBUG false, FREQ_HZ 100000000" *) input dphy_hs_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dphy_hs_clock CLK_P" *) input dphy_hs_clock_clk_p;
  output [0:0]hdmi_rx_hpd;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N" *) output hdmi_tx_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P" *) output hdmi_tx_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx DATA_N" *) output [2:0]hdmi_tx_data_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx DATA_P" *) output [2:0]hdmi_tx_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  input sys_clock;

  wire [31:0]AXI_BayerToRGB_0_m_axis_video_tdata;
  wire AXI_BayerToRGB_0_s_axis_video_tready;
  wire [39:0]MIPI_CSI_2_RX_0_m_axis_video_tdata;
  wire MIPI_CSI_2_RX_0_m_axis_video_tlast;
  wire [0:0]MIPI_CSI_2_RX_0_m_axis_video_tuser;
  wire MIPI_CSI_2_RX_0_m_axis_video_tvalid;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_CL_ENABLE;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_CL_RXCLKACTIVEHS;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_CL_STOPSTATE;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_ENABLE;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXACTIVEHS;
  wire [7:0]MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXDATAHS;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXSYNCHS;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXVALIDHS;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_ENABLE;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXACTIVEHS;
  wire [7:0]MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXDATAHS;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXSYNCHS;
  wire MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXVALIDHS;
  wire MIPI_D_PHY_RX_0_RxByteClkHS;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_clk_out3;
  wire clk_wiz_1_clk_out1;
  wire dphy_clk_lp_n_1;
  wire dphy_clk_lp_p_1;
  wire [1:0]dphy_data_hs_n_1;
  wire [1:0]dphy_data_hs_p_1;
  wire [1:0]dphy_data_lp_n_1;
  wire [1:0]dphy_data_lp_p_1;
  wire dphy_hs_clock_1_CLK_N;
  wire dphy_hs_clock_1_CLK_P;
  wire reset_rtl_1;
  wire rgb2dvi_0_TMDS_CLK_N;
  wire rgb2dvi_0_TMDS_CLK_P;
  wire [2:0]rgb2dvi_0_TMDS_DATA_N;
  wire [2:0]rgb2dvi_0_TMDS_DATA_P;
  wire sys_clock_1;
  wire v_tc_0_active_video_out;
  wire v_tc_0_hsync_out;
  wire v_tc_0_vsync_out;
  wire [0:0]xlconstant_0_dout;

  assign dphy_clk_lp_n_1 = dphy_clk_lp_n;
  assign dphy_clk_lp_p_1 = dphy_clk_lp_p;
  assign dphy_data_hs_n_1 = dphy_data_hs_n[1:0];
  assign dphy_data_hs_p_1 = dphy_data_hs_p[1:0];
  assign dphy_data_lp_n_1 = dphy_data_lp_n[1:0];
  assign dphy_data_lp_p_1 = dphy_data_lp_p[1:0];
  assign dphy_hs_clock_1_CLK_N = dphy_hs_clock_clk_n;
  assign dphy_hs_clock_1_CLK_P = dphy_hs_clock_clk_p;
  assign hdmi_rx_hpd[0] = xlconstant_0_dout;
  assign hdmi_tx_clk_n = rgb2dvi_0_TMDS_CLK_N;
  assign hdmi_tx_clk_p = rgb2dvi_0_TMDS_CLK_P;
  assign hdmi_tx_data_n[2:0] = rgb2dvi_0_TMDS_DATA_N;
  assign hdmi_tx_data_p[2:0] = rgb2dvi_0_TMDS_DATA_P;
  assign reset_rtl_1 = reset_rtl;
  assign sys_clock_1 = sys_clock;
  hdmi_inout_bd_AXI_BayerToRGB_0_0 AXI_BayerToRGB_0
       (.StreamClk(clk_wiz_1_clk_out1),
        .m_axis_video_tdata(AXI_BayerToRGB_0_m_axis_video_tdata),
        .m_axis_video_tready(1'b1),
        .sStreamReset_n(1'b0),
        .s_axis_video_tdata(MIPI_CSI_2_RX_0_m_axis_video_tdata),
        .s_axis_video_tlast(MIPI_CSI_2_RX_0_m_axis_video_tlast),
        .s_axis_video_tready(AXI_BayerToRGB_0_s_axis_video_tready),
        .s_axis_video_tuser(MIPI_CSI_2_RX_0_m_axis_video_tuser),
        .s_axis_video_tvalid(MIPI_CSI_2_RX_0_m_axis_video_tvalid));
  hdmi_inout_bd_MIPI_CSI_2_RX_0_0 MIPI_CSI_2_RX_0
       (.RxActiveHSD0(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXACTIVEHS),
        .RxActiveHSD1(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXACTIVEHS),
        .RxActiveHSD2(1'b0),
        .RxActiveHSD3(1'b0),
        .RxByteClkHS(MIPI_D_PHY_RX_0_RxByteClkHS),
        .RxDataHSD0(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXDATAHS),
        .RxDataHSD1(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXDATAHS),
        .RxDataHSD2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RxDataHSD3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RxSyncHSD0(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXSYNCHS),
        .RxSyncHSD1(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXSYNCHS),
        .RxSyncHSD2(1'b0),
        .RxSyncHSD3(1'b0),
        .RxValidHSD0(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXVALIDHS),
        .RxValidHSD1(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXVALIDHS),
        .RxValidHSD2(1'b0),
        .RxValidHSD3(1'b0),
        .aClkEnable(MIPI_D_PHY_RX_0_D_PHY_PPI_CL_ENABLE),
        .aClkStopstate(MIPI_D_PHY_RX_0_D_PHY_PPI_CL_STOPSTATE),
        .aD0Enable(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_ENABLE),
        .aD1Enable(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_ENABLE),
        .aRxClkActiveHS(MIPI_D_PHY_RX_0_D_PHY_PPI_CL_RXCLKACTIVEHS),
        .m_axis_video_tdata(MIPI_CSI_2_RX_0_m_axis_video_tdata),
        .m_axis_video_tlast(MIPI_CSI_2_RX_0_m_axis_video_tlast),
        .m_axis_video_tready(AXI_BayerToRGB_0_s_axis_video_tready),
        .m_axis_video_tuser(MIPI_CSI_2_RX_0_m_axis_video_tuser),
        .m_axis_video_tvalid(MIPI_CSI_2_RX_0_m_axis_video_tvalid),
        .video_aclk(clk_wiz_1_clk_out1),
        .video_aresetn(1'b1));
  hdmi_inout_bd_MIPI_D_PHY_RX_0_0 MIPI_D_PHY_RX_0
       (.RefClk(clk_wiz_1_clk_out1),
        .RxByteClkHS(MIPI_D_PHY_RX_0_RxByteClkHS),
        .aClkEnable(MIPI_D_PHY_RX_0_D_PHY_PPI_CL_ENABLE),
        .aClkForceRxmode(1'b0),
        .aClkStopstate(MIPI_D_PHY_RX_0_D_PHY_PPI_CL_STOPSTATE),
        .aD0Enable(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_ENABLE),
        .aD0ForceRxmode(1'b0),
        .aD1Enable(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_ENABLE),
        .aD1ForceRxmode(1'b0),
        .aRst(reset_rtl_1),
        .aRxClkActiveHS(MIPI_D_PHY_RX_0_D_PHY_PPI_CL_RXCLKACTIVEHS),
        .dphy_clk_hs_n(dphy_hs_clock_1_CLK_N),
        .dphy_clk_hs_p(dphy_hs_clock_1_CLK_P),
        .dphy_clk_lp_n(dphy_clk_lp_n_1),
        .dphy_clk_lp_p(dphy_clk_lp_p_1),
        .dphy_data_hs_n(dphy_data_hs_n_1),
        .dphy_data_hs_p(dphy_data_hs_p_1),
        .dphy_data_lp_n(dphy_data_lp_n_1),
        .dphy_data_lp_p(dphy_data_lp_p_1),
        .rbD0RxActiveHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXACTIVEHS),
        .rbD0RxDataHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXDATAHS),
        .rbD0RxSyncHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXSYNCHS),
        .rbD0RxValidHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL0_RXVALIDHS),
        .rbD1RxActiveHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXACTIVEHS),
        .rbD1RxDataHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXDATAHS),
        .rbD1RxSyncHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXSYNCHS),
        .rbD1RxValidHS(MIPI_D_PHY_RX_0_D_PHY_PPI_DL1_RXVALIDHS));
  hdmi_inout_bd_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out3),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(clk_wiz_1_clk_out1));
  hdmi_inout_bd_rgb2dvi_0_0 rgb2dvi_0
       (.PixelClk(clk_wiz_0_clk_out3),
        .TMDS_Clk_n(rgb2dvi_0_TMDS_CLK_N),
        .TMDS_Clk_p(rgb2dvi_0_TMDS_CLK_P),
        .TMDS_Data_n(rgb2dvi_0_TMDS_DATA_N),
        .TMDS_Data_p(rgb2dvi_0_TMDS_DATA_P),
        .aRst(reset_rtl_1),
        .vid_pData(AXI_BayerToRGB_0_m_axis_video_tdata[23:0]),
        .vid_pHSync(v_tc_0_hsync_out),
        .vid_pVDE(v_tc_0_active_video_out),
        .vid_pVSync(v_tc_0_vsync_out));
  hdmi_inout_bd_v_tc_0_1 v_tc_0
       (.active_video_in(1'b0),
        .active_video_out(v_tc_0_active_video_out),
        .clk(clk_wiz_0_clk_out3),
        .clken(1'b1),
        .det_clken(1'b1),
        .fsync_in(1'b0),
        .gen_clken(1'b1),
        .hblank_in(1'b0),
        .hsync_in(1'b0),
        .hsync_out(v_tc_0_hsync_out),
        .resetn(1'b1),
        .s_axi_aclk(clk_wiz_0_clk_out2),
        .s_axi_aclken(1'b1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(1'b1),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0),
        .vblank_in(1'b0),
        .vsync_in(1'b0),
        .vsync_out(v_tc_0_vsync_out));
  hdmi_inout_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
