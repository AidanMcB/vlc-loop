###########################
#!/bin/bash

# Set the directory containing the video files
VIDEO_DIR="/media/beachluigi/usb_videos"

# Set the display environment for HDMI output
export DISPLAY=:0

# Create a playlist of all video files in the directory
PLAYLIST=$(ls "$VIDEO_DIR"/*.mp4 "$VIDEO_DIR"/*.avi "$VIDEO_DIR"/*.mkv 2> /dev/null)

# Check if the playlist is empty
if [ -z "$PLAYLIST" ]; then
    echo "No video files found in $VIDEO_DIR."
    exit 1
fi

# Use vlc-wrapper with video output options
/usr/bin/vlc-wrapper --fullscreen --loop --vout x11 --zoom 0.5 $PLAYLIST
/usr/bin/vlc-wrapper --vout gl --fullscreen --no-audio --no-video-deco --no-embedded-video --loop "$PLAYLIST"