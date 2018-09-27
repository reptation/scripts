#!/bin/sh


# derived for Hashicorp's Vagrantfile: https://raw.githubusercontent.com/hashicorp/nomad/master/demo/vagrant/Vagrantfile

# Update apt and get dependencies
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y unzip curl vim \
    apt-transport-https \
    ca-certificates \
    software-properties-common

# Download Nomad
NOMAD_VERSION=0.8.1

echo "Fetching Nomad..."
cd /tmp/
curl -sSL https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip -o nomad.zip

echo "Fetching Consul..."
CONSUL_VERSION=1.0.7
curl -sSL https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip > consul.zip

echo "Installing Nomad..."
unzip nomad.zip
sudo install nomad /usr/bin/nomad

sudo mkdir -p /etc/nomad.d
sudo chmod a+w /etc/nomad.d

# Set hostname's IP to made advertisement Just Work
#sudo sed -i -e "s/.*nomad.*/$(ip route get 1 | awk '{print $NF;exit}') nomad/" /etc/hosts

# Already installed Docker 

#echo "Installing Docker..."
#if [[ -f /etc/apt/sources.list.d/docker.list ]]; then
#    echo "Docker repository already installed; Skipping"
#else
#    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#    sudo apt-get update
#fi
#sudo DEBIAN_FRONTEND=noninteractive apt-get install -y docker-ce
#
## Restart docker to make sure we get the latest version of the daemon if there is an upgrade
#sudo service docker restart
#
## Make sure we can actually use docker as the vagrant user
#sudo usermod -aG docker vagrant

echo "Installing Consul..."
unzip /tmp/consul.zip
sudo install consul /usr/bin/consul
