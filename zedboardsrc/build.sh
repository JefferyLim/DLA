./dtc -I dts -O dtb -o devicetree.dtb ../fw/vivado/zedboard/zedboard.sdk/devicetree/system.dts

/home/Xilinx/SDK/2016.2/bin/bootgen -image output.bif -arch zynq -o BOOT.bin -w on 
