kvm -smp 2 -m 1500 -netdev bridge,id=br0 -device virtio-net-pci,netdev=br0 -vga qxl -drive file="$1" -k en-us 

