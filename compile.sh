make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- distclean
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- all -j16
md5sum arch/arm64/boot/Image.gz
# scp -r arch/arm64/boot/Image.gz pi@192.168.31.32:/home/pi/kernel8.img
# and on the device: sudo -s    mv kernel8.img /boot
