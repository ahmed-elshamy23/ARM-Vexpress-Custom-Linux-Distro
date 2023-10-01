#!/bin/bash
qemu-system-arm -M vexpress-a9 -m 512M \
-dtb vexpress-v2p-ca9.dtb \
-kernel u-boot \
-monitor telnet:127.0.0.1:1234,server,nowait \
-serial stdio \
-nographic \
-sd sdcard.img \
-append "console=ttyAMA0 root=/dev/mmcblk0p2 rw"
