set_property SRC_FILE_INFO {cfile:c:/Users/DELL/Desktop/BETSS/hdmi_inout_po_konsultacji/hdmi_inout/hdmi_inout.srcs/sources_1/bd/hdmi_inout_bd/ip/hdmi_inout_bd_clk_wiz_0_1/hdmi_inout_bd_clk_wiz_0_1.xdc rfile:../../../hdmi_inout.srcs/sources_1/bd/hdmi_inout_bd/ip/hdmi_inout_bd_clk_wiz_0_1/hdmi_inout_bd_clk_wiz_0_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.08
