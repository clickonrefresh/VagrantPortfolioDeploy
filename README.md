--------------------------------------------------------------
# Clickonrefresh Disruptive Portfolio Design Automation
--------------------------------------------------------------


## Automated Deployment of a suite of Disruptive Browser Based Applications to manage a portfolio and business.
----------------------------------------------------------------------------------------------------------------

#### Suited for I.T. Proffessionals

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

### You will need 9 Domain Names / Sub-Domain Names if you wish to access all of your apps over SSL

-----------------------------------------------------------------------

-----------------------------------------------------------------------


### Highly extensible and customizable ###

This script will download Vagrant, initiate 3 virtual machines each with a unique set of dockerized applications, as well as some Linux packaged apps.


_______________________
### To run this script:

#### Dependencies first:

``` sudo apt install zip -y ```

```sudo apt install wget -y```

#### Fetch the repo

``` cd /opt ```

``` sudo mkdir /myproject ```

``` cd myproject ```

``` sudo wget https://github.com/clickonrefresh/VagrantPortfolioDeploy/archive/main.zip ```

``` sudo unzip main.zip ```

``` cd VagrantPortfolioDeploy-main ```

``` sudo bash VagrantHost/main.sh ```
___________________________________


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
 - Each 'VM' is deployed with fail2ban, noip.com DUC and docker.

 - Portainer is deployed to manage the entire docker swarm.

---------------------------------------------------------------------

##### The easiest way to configure database and application password in the yaml files is to fork this project, and alter the configurations to your liking.
Alternatively you will need to alter the configurations after deploying and re-run the containers.
