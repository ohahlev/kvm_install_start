#!/bin/sh

# create image file
qemu-img create -f qcow2 "$2" 10G

# install os
kvm -smp 2 -m 1500 -netdev bridge,id=br0 -device virtio-net-pci,netdev=br0 -vga qxl -cdrom "$1" -hda "$2" -boot d -k en-us 
