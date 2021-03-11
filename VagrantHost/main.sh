# This is the script for the host | Vagrant Installation
#!/bin/bash
# Install Virtualbox, Vagrant, Vagrant Os.


sudo apt update
sudo apt upgrade -y
sudo apt install zip -y
sudo apt install curl -y

sudo apt install virtualbox -y

sudo curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb
vagrant --version

cd ~/myvagrant/vms/admin
vagrant up
vagrant ssh

cd ~/myvagrant/vms/mainapps
vagrant up
vagrant ssh

cd ~/myvagrant/vms/2ndapps
vagrant up
vagrant ssh
