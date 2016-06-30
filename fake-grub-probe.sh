#!/bin/bash
#
# A faker script for grub-probe, if your's stops working properly
#

# Depends on /root/grub.hack file

# . /root/grub.hach

arg_is_device=0
target=""

# Call Order:
# / --target=device
# --target=fs_uuid /dev/sda1 --device
# /boot --target=device
# --target=fs_uuid /boot --device
# "/" "--target=fs"
# "--target=abstraction" "ext2" "--device"
# "--target=fs" "ext2" "--device"
# "--target=drive" "ext2" "--device"
# "--target=fs_uuid" "ext2" "--device"
# "--target=abstraction" "ext2" "--device"
# "--target=fs" "ext2" "--device"
# "--target=drive" "ext2" "--device"
# "--target=fs_uuid" "ext2" "--device"
# "/" "--target=device"
# "--target=fs_uuid" "ext2" "--device"
# "/boot" "--target=device"
# "--target=fs_uuid" "ext2" "--device"
# "/" "--target=fs"
# "--target=abstraction" "ext2" "--device"
# "--target=fs" "ext2" "--device"
# "--target=drive" "ext2" "--device"
# "--target=fs_uuid" "ext2" "--device"
# "--target=abstraction" "ext2" "--device"
# "--target=fs" "ext2" "--device"
# "--target=drive" "ext2" "--device"
# "--target=fs_uuid" "ext2" "--device"

for opt in $@
do
    case "${opt}" in
    --device)
        # Means the thing in $arg is a device
        arg_is_device=1
        ;;
    --target=*)
        # = device, = fs, = fs_uuid
        target=${opt#*=}
        ;;
    *)
        arg=$opt
        ;;
    esac
done

set >> /tmp/probe.env

case "$target" in
abstraction)
    echo
    ;;
device)
    echo "/dev/sda1"
    ;;
drive)
    echo "(hd0)"
    ;;
fs)
    # Returns the filesystem type
    echo "ext2"
    ;;
fs_uuid)
    tune2fs -l $arg | awk '/Filesystem UUID/ { print $3 }'
    ;;
esac

