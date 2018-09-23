#bin/sh

git clone https://github.com/reptation/scripts.git
sudo bash scripts/remote-setup.sh
## TODO: install user accounts, keys

sudo bash scripts/infrastructure/add-users.sh
sudo bash scripts/infrastructure/docker/docker-install.sh
## TODO: update install procedure 

sudo bash scripts/infrastructure/docker/docker-compose-install.sh
## TODO: update install procedure

sudo bash scripts/infrastructure/jenkins/jenkins-master-install.sh
