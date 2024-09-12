# vlc-loop

Notes:
- This document assumes you have a user named `beachluigi`. If you don't want to create that user, substitute with your own username.
- This also assumes that your pi registers your usb at `/dev/sda1`. If this is different for your machine, change it. 

# Helpful terms
- `sudo` "substitute user, do". In practice it means "do this as a root user"
- `nano` command line text editor for linux. Write code without GUI 
- `chmod` "change mode" used to change file and directory permissions
    - `-x` argument, such as in `chmod -x /my-script.sh` adds the execute permission to the file (allows user to execute it) 

# How To

## mount-usb.sh
You need to mount your USB device to a given folder. From there, the execution script will read from this folder to find your videos.

1. Copy and paste the contents of the `mount-usb.sh` file into a new file on your Raspi.
- `sudo nano /usr/local/bin/mount-usb.sh` to open/create new file
- copy/paste the contents in
- `Ctrl + o` to enter save mode, `Enter` to save
- `Ctrl + x` to exit nano

2. Allow current permissions to run the script 
`sudo chmod +x /usr/local/bin/mount-usb.sh`

3. Execute the script with the following command
`sudo /usr/local/bin/mount-usb.sh`

## play-from-folder.sh
This reads from the folder `/media/beachluigi/usb_videos` and plays all the video files within it on a loop.

1. Copy and paste the contents of the `play-from-folder.sh` file into a new file on your Raspi.
- `sudo nano /usr/local/bin/play-from-folder.sh` to open/create new file
- copy/paste the contents in
- `Ctrl + o` to enter save mode, `Enter` to save
- `Ctrl + x` to exit nano

2. Allow current permissions to run the script 
`sudo chmod +x /usr/local/bin/play-from-folder.sh`

3. Execute the script with the following command
`sudo /usr/local/bin/play-from-folder.sh`
