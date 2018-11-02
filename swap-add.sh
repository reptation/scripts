#!/bin/sh
# add 1G swapfile. 

sudo dd if=/dev/zero of=/swapfile bs=1M count=1024 oflag=append conv=notrunc
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
