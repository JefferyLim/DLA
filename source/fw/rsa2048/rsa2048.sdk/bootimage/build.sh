./dtc -I dts -O dtb -o devicetree.dtb ../devicetree/system.dts

/opt/Xilinx/SDK/2016.2/bin/bootgen -image output.bif -arch zynq -o BOOT.bin -w on 