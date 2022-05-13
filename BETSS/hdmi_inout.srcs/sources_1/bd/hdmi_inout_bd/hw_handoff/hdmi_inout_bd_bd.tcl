
################################################################
# This is a generated script based on design: hdmi_inout_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source hdmi_inout_bd_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-20:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name hdmi_inout_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set dphy_hs_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dphy_hs_clock ]

  set hdmi_tx [ create_bd_intf_port -mode Master -vlnv digilentinc.com:interface:tmds_rtl:1.0 hdmi_tx ]


  # Create ports
  set dphy_clk_lp_n [ create_bd_port -dir I dphy_clk_lp_n ]
  set dphy_clk_lp_p [ create_bd_port -dir I dphy_clk_lp_p ]
  set dphy_data_hs_n [ create_bd_port -dir I -from 1 -to 0 dphy_data_hs_n ]
  set dphy_data_hs_p [ create_bd_port -dir I -from 1 -to 0 dphy_data_hs_p ]
  set dphy_data_lp_n [ create_bd_port -dir I -from 1 -to 0 dphy_data_lp_n ]
  set dphy_data_lp_p [ create_bd_port -dir I -from 1 -to 0 dphy_data_lp_p ]
  set hdmi_rx_hpd [ create_bd_port -dir O -from 0 -to 0 hdmi_rx_hpd ]
  set reset_rtl [ create_bd_port -dir I -type rst reset_rtl ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_rtl
  set sys_clock [ create_bd_port -dir I sys_clock ]

  # Create instance: AXI_BayerToRGB_0, and set properties
  set AXI_BayerToRGB_0 [ create_bd_cell -type ip -vlnv digilentinc.com:user:AXI_BayerToRGB:1.0 AXI_BayerToRGB_0 ]

  # Create instance: MIPI_CSI_2_RX_0, and set properties
  set MIPI_CSI_2_RX_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:MIPI_CSI_2_RX:1.2 MIPI_CSI_2_RX_0 ]

  # Create instance: MIPI_D_PHY_RX_0, and set properties
  set MIPI_D_PHY_RX_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:MIPI_D_PHY_RX:1.3 MIPI_D_PHY_RX_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {104.759} \
   CONFIG.CLKOUT1_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {250.000} \
   CONFIG.CLKOUT2_JITTER {143.688} \
   CONFIG.CLKOUT2_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {109.241} \
   CONFIG.CLKOUT3_PHASE_ERROR {96.948} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {8.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {4.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {20} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: rgb2dvi_0, and set properties
  set rgb2dvi_0 [ create_bd_cell -type ip -vlnv digilentinc.com:ip:rgb2dvi:1.4 rgb2dvi_0 ]

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net MIPI_D_PHY_RX_0_D_PHY_PPI [get_bd_intf_pins MIPI_CSI_2_RX_0/rx_mipi_ppi] [get_bd_intf_pins MIPI_D_PHY_RX_0/D_PHY_PPI]
  connect_bd_intf_net -intf_net dphy_hs_clock_1 [get_bd_intf_ports dphy_hs_clock] [get_bd_intf_pins MIPI_D_PHY_RX_0/dphy_hs_clock]
  connect_bd_intf_net -intf_net rgb2dvi_0_TMDS [get_bd_intf_ports hdmi_tx] [get_bd_intf_pins rgb2dvi_0/TMDS]

  # Create port connections
  connect_bd_net -net AXI_BayerToRGB_0_m_axis_video_tdata [get_bd_pins AXI_BayerToRGB_0/m_axis_video_tdata] [get_bd_pins rgb2dvi_0/vid_pData]
  connect_bd_net -net AXI_BayerToRGB_0_s_axis_video_tready [get_bd_pins AXI_BayerToRGB_0/s_axis_video_tready] [get_bd_pins MIPI_CSI_2_RX_0/m_axis_video_tready]
  connect_bd_net -net MIPI_CSI_2_RX_0_m_axis_video_tdata [get_bd_pins AXI_BayerToRGB_0/s_axis_video_tdata] [get_bd_pins MIPI_CSI_2_RX_0/m_axis_video_tdata]
  connect_bd_net -net MIPI_CSI_2_RX_0_m_axis_video_tlast [get_bd_pins AXI_BayerToRGB_0/s_axis_video_tlast] [get_bd_pins MIPI_CSI_2_RX_0/m_axis_video_tlast]
  connect_bd_net -net MIPI_CSI_2_RX_0_m_axis_video_tuser [get_bd_pins AXI_BayerToRGB_0/s_axis_video_tuser] [get_bd_pins MIPI_CSI_2_RX_0/m_axis_video_tuser]
  connect_bd_net -net MIPI_CSI_2_RX_0_m_axis_video_tvalid [get_bd_pins AXI_BayerToRGB_0/s_axis_video_tvalid] [get_bd_pins MIPI_CSI_2_RX_0/m_axis_video_tvalid]
  connect_bd_net -net MIPI_D_PHY_RX_0_RxByteClkHS [get_bd_pins MIPI_CSI_2_RX_0/RxByteClkHS] [get_bd_pins MIPI_D_PHY_RX_0/RxByteClkHS]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins v_tc_0/s_axi_aclk]
  connect_bd_net -net clk_wiz_0_clk_out3 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins rgb2dvi_0/PixelClk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_pins AXI_BayerToRGB_0/StreamClk] [get_bd_pins MIPI_CSI_2_RX_0/video_aclk] [get_bd_pins MIPI_D_PHY_RX_0/RefClk] [get_bd_pins clk_wiz_0/clk_out3]
  connect_bd_net -net dphy_clk_lp_n_1 [get_bd_ports dphy_clk_lp_n] [get_bd_pins MIPI_D_PHY_RX_0/dphy_clk_lp_n]
  connect_bd_net -net dphy_clk_lp_p_1 [get_bd_ports dphy_clk_lp_p] [get_bd_pins MIPI_D_PHY_RX_0/dphy_clk_lp_p]
  connect_bd_net -net dphy_data_hs_n_1 [get_bd_ports dphy_data_hs_n] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_hs_n]
  connect_bd_net -net dphy_data_hs_p_1 [get_bd_ports dphy_data_hs_p] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_hs_p]
  connect_bd_net -net dphy_data_lp_n_1 [get_bd_ports dphy_data_lp_n] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_lp_n]
  connect_bd_net -net dphy_data_lp_p_1 [get_bd_ports dphy_data_lp_p] [get_bd_pins MIPI_D_PHY_RX_0/dphy_data_lp_p]
  connect_bd_net -net reset_rtl_1 [get_bd_ports reset_rtl] [get_bd_pins MIPI_D_PHY_RX_0/aRst] [get_bd_pins rgb2dvi_0/aRst]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net v_tc_0_active_video_out [get_bd_pins rgb2dvi_0/vid_pVDE] [get_bd_pins v_tc_0/active_video_out]
  connect_bd_net -net v_tc_0_hsync_out [get_bd_pins rgb2dvi_0/vid_pHSync] [get_bd_pins v_tc_0/hsync_out]
  connect_bd_net -net v_tc_0_vsync_out [get_bd_pins rgb2dvi_0/vid_pVSync] [get_bd_pins v_tc_0/vsync_out]
  connect_bd_net -net xlconstant_0_dout [get_bd_ports hdmi_rx_hpd] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


