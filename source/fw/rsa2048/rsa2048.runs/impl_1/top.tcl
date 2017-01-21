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

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.cache/wt [current_project]
  set_property parent.project_path /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.xpr [current_project]
  set_property ip_repo_paths {
  /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.cache/ip
  /home/linux/Documents/DLA/source/sw/rsa_HLS
} [current_project]
  set_property ip_output_repo /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.runs/synth_1/top.dcp
  read_xdc -ref xc7z020_processing_system7_0_1 -cells inst /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/bd/xc7z020/ip/xc7z020_processing_system7_0_1/xc7z020_processing_system7_0_1.xdc
  set_property processing_order EARLY [get_files /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/bd/xc7z020/ip/xc7z020_processing_system7_0_1/xc7z020_processing_system7_0_1.xdc]
  read_xdc -prop_thru_buffers -ref xc7z020_rst_processing_system7_0_100M_2 -cells U0 /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2_board.xdc
  set_property processing_order EARLY [get_files /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2_board.xdc]
  read_xdc -ref xc7z020_rst_processing_system7_0_100M_2 -cells U0 /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2.xdc
  set_property processing_order EARLY [get_files /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2.xdc]
  read_xdc /home/linux/Documents/DLA/source/fw/rsa2048/rsa2048.srcs/sources_1/new/zedboard_master_XDC_RevC_D_v3.xdc
  link_design -top top -part xc7z020clg484-1
  write_hwdef -file top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force top_opt.dcp
  report_drc -file top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force top_placed.dcp
  report_io -file top_io_placed.rpt
  report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
  report_control_sets -verbose -file top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force top_routed.dcp
  report_drc -file top_drc_routed.rpt -pb top_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file top_timing_summary_routed.rpt -rpx top_timing_summary_routed.rpx
  report_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx
  report_route_status -file top_route_status.rpt -pb top_route_status.pb
  report_clock_utilization -file top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force top.mmi }
  write_bitstream -force top.bit 
  catch { write_sysdef -hwdef top.hwdef -bitfile top.bit -meminfo top.mmi -file top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

