onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "/opt/Xilinx/Vivado/2016.2/lib/lnx64.o/libxil_vsim.so" -lib xil_defaultlib xc7z020_opt

do {wave.do}

view wave
view structure
view signals

do {xc7z020.udo}

run -all

quit -force
