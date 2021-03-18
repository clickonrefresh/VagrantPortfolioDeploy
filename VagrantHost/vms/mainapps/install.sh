     apt-get update
     apt-get upgrade -y
     apt-get install fail2ban -y
     apt-get install zip -y
     apt-get install curl -y
     apt-get install wget -y
     apt-get update
     sudo usermod -aG sudo vagrant
     echo "WHHOOOOOOOOOOOOAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHH"
     sleep 5
     sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
     sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
     sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
     sudo apt update
     sudo apt install docker-ce -y
     sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
     sudo chmod +x /usr/local/bin/docker-compose
     
     sudo apt-get update
     cd /var
     cd www
     cd odoo/addons
     sudo unzip ohrms_core-14.0.1.0.0.zip
     sudo unzip base_accounting_kit-14.0.2.6.5.zip
     sudo docker-compose up -d
     sleep 20s
     cd /var
     cd www
     cd organizr
     sudo docker-compose up -d
     sleep 20s
     cd /var
     cd www
     cd bookstack
     sudo docker-compose up -d
     sleep 20s
     cd /opt
     sudo mkdir noip && cd noip
     sudo wget https://github.com/clickonrefresh/Automate-Noip-DUC/archive/main.zip
     sudo unzip main.zip
     sudo apt-get autoremove -y
