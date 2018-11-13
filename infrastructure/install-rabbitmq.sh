#!/bin/sh

distribution="bionic"

sudo apt-key adv --keyserver "hkps.pool.sks-keyservers.net" --recv-keys "0x6B73A36E6026DFCA"

#echo "deb https://dl.bintray.com/rabbitmq/debian $distribution main" > bintray.rabbitmq.list
#sudo cp bintray.rabbitmq.list /etc/apt/sources.list.d/

echo "deb https://dl.bintray.com/rabbitmq/debian $distribution main erlang" | sudo tee /etc/apt/sources.list.d/bintray.rabbitmq.list

sudo apt-get update
sudo apt-get install -y rabbitmq-server

