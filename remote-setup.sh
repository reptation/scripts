#!/bin/bash
address=$1
ssh-copy-id $1
ssh $address wget https://raw.githubusercontent.com/reptation/scripts/master/.bash_aliases

