onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xc7z020 -pli "/opt/Xilinx/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L processing_system7_bfm_v2_0_5 -L blk_mem_gen_v8_3_3 -L axi_bram_ctrl_v4_0_8 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_9 -L fifo_generator_v13_1_1 -L axi_data_fifo_v2_1_8 -L axi_crossbar_v2_1_10 -L axi_protocol_converter_v2_1_9 -O5 xil_defaultlib.xc7z020 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {xc7z020.udo}

run -all

endsim

quit -force
