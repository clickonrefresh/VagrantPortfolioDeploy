
# !!! WARNING!!!!THIS SCRIPT IS IN TESTING PHASE !!! ** USE AT OWN RISK **
--------------------------------------------------------------
# Disruptive Portfolio & Business Management Suite
--------------------------------------------------------------


## Automated deployment of a suite of self hosted, disruptive, browser based applications to manage a portfolio and/or business.
----------------------------------------------------------------------------------------------------------------

#### Suited for I.T. Proffessionals

##### Although this base suite is customised for IT professionals, it can be tailored for any industry or individuals needs.

------------------------------------
## Dockerized & Packaged Browser-Based Apps Included:

    - Admin apps
      - Nginx Proxy Manager
      - Portainer
      - Teleport
      - Cockpit

    - Productivity Apps
      - Odoo Community Edition - (with Python-Pandas configured to accomodate 3rd Party Applications)
      - Visual Studio Code
      - Organizr
      - Bookstack

    - Extras
      - Homeassistant

## Packaged Applications:

    - Fail2ban
    - Noip.com Dynamic Update Client
    - Docker
    - Vagrant & VirtualBox

------------------------
### Dependencies Included:

    - wget
    - curl
    - zip

------------------------------------------------------------------------

#### Minimum System Requirements:

    - 4 vCPU
    - 6 G Available RAM
    - 100 G Available Disk Space

#### Recommended System Requirements:

    - 8 vCPU
    - 16 G Available RAM
    - 100 G Available disk Space


---------------------
### You will need 9 Domain Names / Sub-Domain Names if you wish to access all of your apps over SSL

##### The noip script will be downloaded during this deployment, you will need to ssh into each machine individually and run their respective noip.com DUC scripts:

```
vagrant ssh
cd /opt/noip/Automate-Noip-DUC-main
sudo bash main.sh
```
-------------------

-----------------------------------------------------------------------


### Highly extensible and customizable ###

This script will download Vagrant, initiate 3 virtual machines each with a unique set of dockerized applications, as well as some Linux packaged apps.


_______________________
### To run this script:


``` mkdir ~/myvagrantprojects ```

``` cd ~/myvagrantprojects ```

``` git clone https://github.com/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite.git ```

``` cd DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/ ```

``` bash main.sh ```

________________________

----------------------------------------------------------------------------------
#### The script will run, deploying virtualbox and vagrant, then initiate the virtual machines with their own unique set of install scripts:
-----------------------------------------------------------------------------------

  Virtual Machines:
               
                - Ubuntu 20.04 LTS - Hashicorp Image
                  
                    - Administration:
                        - Nginx Proxy Manager
                        - Cockpit
                        - Portainer
                    
                    - Main Applications:
                        - Odoo CE
                        - Organizr
                        - Bookstack
                    
                    - Secondary Applications:
                        - Visual Studio Code
                        - Teleport
                        - HomeAssistant

---------------------------------------------------------------------------------
 - Each 'VM' is deployed with fail2ban, a script that I wrote for Noip.com DUC (https://github.com/clickonrefresh/Automate-Noip-DUC) and docker.
 - Portainer is deployed to manage the entire docker swarm.

---------------------------------------------------------------------

##### The easiest way to configure database and application password in the yaml files is to fork this project, and alter the configurations to your liking.
Alternatively you will need to alter the configurations after deploying and re-run the containers.


## I am looking for people to help contribute towards the documentation and development of this project.
### If you are interested please email me @ clickonrefresh@gmail.com
