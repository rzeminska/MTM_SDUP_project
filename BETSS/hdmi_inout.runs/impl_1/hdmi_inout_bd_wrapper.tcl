# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  set_param chipscope.maxJobs 3
  open_checkpoint hdmi_inout_bd_wrapper_placed.dcp
  set_property webtalk.parent_dir C:/Users/DELL/Desktop/repoBETSS/MTM_SDUP_project/BETSS/hdmi_inout.cache/wt [current_project]
  route_design 
  write_checkpoint -force hdmi_inout_bd_wrapper_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file hdmi_inout_bd_wrapper_drc_routed.rpt -pb hdmi_inout_bd_wrapper_drc_routed.pb -rpx hdmi_inout_bd_wrapper_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file hdmi_inout_bd_wrapper_methodology_drc_routed.rpt -pb hdmi_inout_bd_wrapper_methodology_drc_routed.pb -rpx hdmi_inout_bd_wrapper_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file hdmi_inout_bd_wrapper_power_routed.rpt -pb hdmi_inout_bd_wrapper_power_summary_routed.pb -rpx hdmi_inout_bd_wrapper_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file hdmi_inout_bd_wrapper_route_status.rpt -pb hdmi_inout_bd_wrapper_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file hdmi_inout_bd_wrapper_timing_summary_routed.rpt -pb hdmi_inout_bd_wrapper_timing_summary_routed.pb -rpx hdmi_inout_bd_wrapper_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file hdmi_inout_bd_wrapper_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file hdmi_inout_bd_wrapper_clock_utilization_routed.rpt"
  create_report "impl_1_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file hdmi_inout_bd_wrapper_bus_skew_routed.rpt -pb hdmi_inout_bd_wrapper_bus_skew_routed.pb -rpx hdmi_inout_bd_wrapper_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force hdmi_inout_bd_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  catch { write_mem_info -force hdmi_inout_bd_wrapper.mmi }
  write_bitstream -force hdmi_inout_bd_wrapper.bit 
  catch { write_sysdef -hwdef hdmi_inout_bd_wrapper.hwdef -bitfile hdmi_inout_bd_wrapper.bit -meminfo hdmi_inout_bd_wrapper.mmi -file hdmi_inout_bd_wrapper.sysdef }
  catch {write_debug_probes -quiet -force hdmi_inout_bd_wrapper}
  catch {file copy -force hdmi_inout_bd_wrapper.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

