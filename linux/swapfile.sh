#!/usr/bin/env bash

# setup a swapfile
# Before start: 
# - check the swap mem using 'free -m'
# - check if /swapfile exist on the /home/user , if exist use the existing
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

# edit /etc/fstab
# add the following config in the last line
/swapfile none swap defaults 0 0