#! /bin/bash

# clean
rm -rf sdcard.img boot root

# create 32MB sd card
sudo dd if=/dev/zero of=sdcard.img bs=1M count=32
sudo chmod 777 sdcard.img

# Create 1 partition 
printf "n\n\n\n\n+7M\nw\n" | sudo fdisk sdcard.img
printf "n\n\n\n\n+22M\nw\n" | sudo fdisk sdcard.img

# attach to a unused loop device 
export loopback_device=$(sudo losetup -f --show sdcard.img)

# update partiotion table
sudo partprobe ${loopback_device}

#create fat and ext4 filesystems 
sudo mkfs.fat ${loopback_device}p1
sudo mkfs.ext4 ${loopback_device}p2

# mount sd card
mkdir boot root
sudo mount ${loopback_device}p1 boot
sudo mount ${loopback_device}p2 root

# copy dtb and zImage
sudo cp vexpress-v2p-ca9.dtb zImage boot/

#copy rootfs
sudo tar -C root/ -xf rootfs.tar

#unmount sd card
sudo umount boot
sudo umount root
