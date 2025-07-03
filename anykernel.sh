### AnyKernel3 Flash Script for Galaxy A24
## Author: osm0sis @ xda-developers
## Cleaned and adapted for A24 by ChatGPT

### AnyKernel setup
properties() { '
kernel.string=Hawaii Kernel Test for a24
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=a24
device.name2=a24x
device.name3=a24nsxx
'; }

### AnyKernel install

# boot partition block
BLOCK=/dev/block/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# Import core functions
. tools/ak3-core.sh;

# Unpack current boot image
dump_boot;

# Repack and flash with new kernel (Image.noksu)
write_boot;
