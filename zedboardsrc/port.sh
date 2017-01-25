scp -i ~/Documents/SSHKEYS/zedboard -P 22222 {BOOT.bin,devicetree.dtb} root@73.229.134.247:~/bootimage
rm BOOT.bin
rm devicetree.dtb
