//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Apr 26 21:00:57 2022
//Host        : DESKTOP-S7H1TQT running 64-bit major release  (build 9200)
//Command     : generate_target hdmi_inout_bd_wrapper.bd
//Design      : hdmi_inout_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hdmi_inout_bd_wrapper
   (hdmi_in_ddc_scl_io,
    hdmi_in_ddc_sda_io,
    hdmi_rx_clk_n,
    hdmi_rx_clk_p,
    hdmi_rx_data_n,
    hdmi_rx_data_p,
    hdmi_rx_hpd,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_data_n,
    hdmi_tx_data_p,
    reset_rtl,
    sys_clock);
  inout hdmi_in_ddc_scl_io;
  inout hdmi_in_ddc_sda_io;
  input hdmi_rx_clk_n;
  input hdmi_rx_clk_p;
  input [2:0]hdmi_rx_data_n;
  input [2:0]hdmi_rx_data_p;
  output [0:0]hdmi_rx_hpd;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_data_n;
  output [2:0]hdmi_tx_data_p;
  input reset_rtl;
  input sys_clock;

  wire hdmi_in_ddc_scl_i;
  wire hdmi_in_ddc_scl_io;
  wire hdmi_in_ddc_scl_o;
  wire hdmi_in_ddc_scl_t;
  wire hdmi_in_ddc_sda_i;
  wire hdmi_in_ddc_sda_io;
  wire hdmi_in_ddc_sda_o;
  wire hdmi_in_ddc_sda_t;
  wire hdmi_rx_clk_n;
  wire hdmi_rx_clk_p;
  wire [2:0]hdmi_rx_data_n;
  wire [2:0]hdmi_rx_data_p;
  wire [0:0]hdmi_rx_hpd;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_data_n;
  wire [2:0]hdmi_tx_data_p;
  wire reset_rtl;
  wire sys_clock;

  IOBUF hdmi_in_ddc_scl_iobuf
       (.I(hdmi_in_ddc_scl_o),
        .IO(hdmi_in_ddc_scl_io),
        .O(hdmi_in_ddc_scl_i),
        .T(hdmi_in_ddc_scl_t));
  IOBUF hdmi_in_ddc_sda_iobuf
       (.I(hdmi_in_ddc_sda_o),
        .IO(hdmi_in_ddc_sda_io),
        .O(hdmi_in_ddc_sda_i),
        .T(hdmi_in_ddc_sda_t));
  hdmi_inout_bd hdmi_inout_bd_i
       (.hdmi_in_ddc_scl_i(hdmi_in_ddc_scl_i),
        .hdmi_in_ddc_scl_o(hdmi_in_ddc_scl_o),
        .hdmi_in_ddc_scl_t(hdmi_in_ddc_scl_t),
        .hdmi_in_ddc_sda_i(hdmi_in_ddc_sda_i),
        .hdmi_in_ddc_sda_o(hdmi_in_ddc_sda_o),
        .hdmi_in_ddc_sda_t(hdmi_in_ddc_sda_t),
        .hdmi_rx_clk_n(hdmi_rx_clk_n),
        .hdmi_rx_clk_p(hdmi_rx_clk_p),
        .hdmi_rx_data_n(hdmi_rx_data_n),
        .hdmi_rx_data_p(hdmi_rx_data_p),
        .hdmi_rx_hpd(hdmi_rx_hpd),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_data_n(hdmi_tx_data_n),
        .hdmi_tx_data_p(hdmi_tx_data_p),
        .reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
