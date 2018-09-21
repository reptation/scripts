#!/bin/sh

wget https://releases.hashicorp.com/vagrant/2.1.5/vagrant_2.1.5_x86_64.deb

sudo dpkg -i vagrant_2.1.5_x86_64.deb

vagrant plugin install vagrant-disksize

