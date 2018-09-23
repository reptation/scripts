#!/bin/sh

cd ~/
git clone https://github.com/reptation/scripts.git
rm ~/.bash_aliases
cp scripts/.bash_aliases .
rm .vimrc
cp scripts/.vimrc .
rm .bashrc
cp scripts/.bashrc .
chown $USER:$USER ./*

apt-get update && apt-get dist-upgrade -y && apt-get autoremove && apt-get autoclean
sudo apt-get -y install unzip htop
