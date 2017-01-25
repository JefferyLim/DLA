sudo mount --options remount,rw /dev/mmcblk0p1
sudo mount --options remount,rw /dev/mmcblk0p2


rm /media/linux/BOOT/BOOT.bin
rm /media/linux/BOOT/devicetree.dtb
mv BOOT.bin /media/linux/BOOT
mv devicetree.dtb /media/linux/BOOT
