#!/bin/bash


read -d '' help <<- HERE
  usage: remote-setup.sh myuser@myhost
  does not work with ssh options
HERE

[ $# -eq 0 ] && { echo $help; exit 1; }

echo "$help"
address=$1
ssh-copy-id $1
ssh $address wget https://raw.githubusercontent.com/reptation/scripts/master/.bash_aliases

