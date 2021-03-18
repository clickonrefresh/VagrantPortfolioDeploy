sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install zip -y
sudo apt-get install fail2ban -y
sudo apt-get install curl -y
sudo apt-get install wget -y
     
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get update
sudo apt-get upgrade -y
     
cd /home
cd ubuntu-focal
cd docker
cd nginxproxymanager
sudo docker-compose up -d
cd ..
     
sudo docker volume create portainer_data
sudo docker run -d -p 8023:8000 -network nginxproxymanager_default --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
     
sudo apt install cockpit -y
     
cd /opt
sudo mkdir noip && cd noip
sudo wget https://github.com/Neill-H/Automate-Noip-DUC/archive/main.zip
sudo unzip main.zip
     
sudo apt autoremove -y 
sudo apt-get update
sudo apt-get upgrade -y
sudo init 6
     
