# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.cache/wt [current_project]
set_property parent.project_path /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths /home/linux/Documents/DLA/fw/hls [current_project]
add_files /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/xc7z020.bd
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/ip/xc7z020_processing_system7_0_1/xc7z020_processing_system7_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2.xdc]
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/ip/xc7z020_rst_processing_system7_0_100M_2/xc7z020_rst_processing_system7_0_100M_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/ip/xc7z020_bigint_math_0_0/constraints/bigint_math_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/ip/xc7z020_auto_pc_0/xc7z020_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/xc7z020_ooc.xdc]
set_property is_locked true [get_files /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/bd/xc7z020/xc7z020.bd]

read_vhdl -library xil_defaultlib /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/new/top.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/new/zedboard_master_XDC_RevC_D_v3.xdc
set_property used_in_implementation false [get_files /home/linux/Documents/DLA/fw/vivado/zedboard/zedboard.srcs/sources_1/new/zedboard_master_XDC_RevC_D_v3.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top top -part xc7z020clg484-1


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
