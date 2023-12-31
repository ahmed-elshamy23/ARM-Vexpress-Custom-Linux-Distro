# ARM-Vexpress-Custom-Linux-Distro
### Overview:
This repository contains a custom linux distro for ARM Versatile Express (vexpress) board based on ARM Cortex-A9 processor.

### Prerequisite Packages:
* **Linux distro at host machine**: for executing the simulation bash scripts (a virtual machine is also allowed).
* **tar**: to extract root filesystem archive.
* **QEMU**: for simulation.

### Quick Start:
1. Clone this repository to your machine.
2. Execute "create_sdcard.sh" bash script to create a dummy SD card, create two partitions for boot and rootfs, mount the SD card and copy necessary files into it.
3. Execute "run.sh" bash script to start simulation with QEMU.
4. Wait for autoboot process to complete and enter the following login credentials:
> * buildroot login: **root**
> * password: **1234**

### Used Tools:
* **Buildroot**: used to generate linux kernel image, device tree blob (DTB) and root filesystem.
* **u-boot**: used to generate a bootloader for the board.
* **arm-linux-gnueabi- toolchain**: for cross compilation.
* **QEMU**: used to simulate ARM vexpress board.
  
> **Note**: detailed configuration can be viewed by cloning the source code of u-boot and buildroot, copying ".config" file into their path and running the command "make menuconfig".
