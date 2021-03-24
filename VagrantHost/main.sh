# This is the script for the host | Vagrant Installation
#!/bin/bash
# Install Virtualbox, Vagrant, Vagrant Os.


sudo apt update
sudo apt upgrade -y
sudo apt install zip -y
sudo apt install curl -y

sudo apt install virtualbox -y

sudo curl -O https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
sudo apt install ./vagrant_2.2.14_x86_64.deb
vagrant --version

vagrant plugin install vagrant-vbguest
vagrant plugin update vagrant-vbguest

cd vms/admin
vagrant up
vagrant ssh
cd ..


cd mainapps
vagrant up
cd ..

cd 2ndapps
vagrant up
cd ..
