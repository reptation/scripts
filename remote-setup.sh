#!/bin/bash


read -d '' help <<- HERE
  assumes you are logged onto the new VM.
  curl https://raw.githubusercontent.com/reptation/scripts/master/remote-setup.sh | sudo bash

HERE

[ $# -gt 0 ] && { echo $help; exit 1; }

echo "$help"
cd ~/
wget https://raw.githubusercontent.com/reptation/scripts/master/.bash_aliases
wget https://raw.githubusercontent.com/reptation/scripts/master/.vimrc
rm .bashrc
wget https://raw.githubusercontent.com/reptation/scripts/master/.bashrc
chown $USER:$USER ./*

sudo apt update
#sudo apt -y dist-upgrade 
apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean
sudo apt install unzip htop -y
