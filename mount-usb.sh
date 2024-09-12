#!/bin/bash

MOUNT_POINT="/media/beachluigi/usb_videos"

# Create the mount point if it doesn't exist
if [ ! -d "$MOUNT_POINT" ]; then
    mkdir -p "$MOUNT_POINT"
fi

# Mount the USB device
mount /dev/sda1 "$MOUNT_POINT"

# Check if the mount was successful
if [ $? -eq 0 ]; then
    echo "USB mounted at $MOUNT_POINT"
else
    echo "Failed to mount USB."
fi
