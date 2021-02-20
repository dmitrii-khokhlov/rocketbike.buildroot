#!/bin/sh

set -u
set -e

IMAGE_DIR="${0%/*}/"

exec \
    qemu-system-x86_64 \
        -M pc \
        -drive file=${IMAGE_DIR}/rootfs.ext2,if=virtio,format=raw \
        -net nic,model=virtio \
        -net user \
        -serial stdio \
        -kernel ${IMAGE_DIR}/bzImage \
        -append "rootwait root=/dev/vda console=tty1 console=ttyS0"
