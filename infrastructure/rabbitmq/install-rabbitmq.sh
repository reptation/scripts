#!/bin/sh

distribution="bionic"

sudo apt-key adv --keyserver "hkps.pool.sks-keyservers.net" --recv-keys "0x6B73A36E6026DFCA"

wget -O - "https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc" | sudo apt-key add -

echo "deb https://dl.bintray.com/rabbitmq/debian $distribution main erlang" | sudo tee /etc/apt/sources.list.d/bintray.rabbitmq.list

sudo apt-get update
sudo apt-get install -y rabbitmq-server

