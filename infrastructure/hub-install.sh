#!/bin/sh

wget https://github.com/github/hub/releases/download/v2.5.1/hub-linux-amd64-2.5.1.tgz
tar -xvzf hub-linux-amd64-2.5.1.tgz
cd hub-linux-amd64-2.5.1/
sudo prefix=/usr/local ./install
#
