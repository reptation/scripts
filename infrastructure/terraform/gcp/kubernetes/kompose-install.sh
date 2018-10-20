#!/bin/sh

curl -L https://github.com/kubernetes/kompose/releases/download/v1.1.0/kompose-linux-amd64 -o kompose

chmod +x kompose
sudo mv kompose /usr/bin/
