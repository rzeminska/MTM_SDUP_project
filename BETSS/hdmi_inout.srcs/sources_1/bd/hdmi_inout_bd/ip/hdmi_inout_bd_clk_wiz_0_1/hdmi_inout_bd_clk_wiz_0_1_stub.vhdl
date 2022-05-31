-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue May 31 18:23:52 2022
-- Host        : DESKTOP-S7H1TQT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/DELL/Desktop/test/MTM_SDUP_project/BETSS/hdmi_inout.srcs/sources_1/bd/hdmi_inout_bd/ip/hdmi_inout_bd_clk_wiz_0_1/hdmi_inout_bd_clk_wiz_0_1_stub.vhdl
-- Design      : hdmi_inout_bd_clk_wiz_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_inout_bd_clk_wiz_0_1 is
  Port ( 
    clk_out_50 : out STD_LOGIC;
    clk_out_200 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end hdmi_inout_bd_clk_wiz_0_1;

architecture stub of hdmi_inout_bd_clk_wiz_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out_50,clk_out_200,locked,clk_in1";
begin
end;
