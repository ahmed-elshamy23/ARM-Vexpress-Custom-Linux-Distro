# ARM-Vexpress-Custom-Linux-Distro
This repository contains a custom linux distro for ARM Versatile Express (vexpress) board based on Cortex-A9.

### Prerequisite Packages:
* tar: to extract root filesystem archive.
* QEMU: for simulation.

### Quick Start:
1. Execute "create_sdcard.sh" bash script to create a dummy SD card, create two partitions for boot and rootfs, mount the SD card and copy necessary files into it.
2. Execute "run.sh" bash script to start simulation with QEMU.
3. Wait for autoboot process and enter the following credentials:
* "buildroot login: **root**", "password: **1234**".

### Used Tools:
* Buildroot: used to generate linux kernel image, device tree blob (DTB) and root filesystem.
* u-boot: used to generate a bootloader for the board.
* QEMU: used to simulate ARM vexpress board.
