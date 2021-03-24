
![](https://raw.githubusercontent.com/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite/main/docs/.gitbook/assets/clickonrefresh-1-.gif)

![Twitter Follow](https://img.shields.io/twitter/follow/clickonrefresh?style=social) 


________________________________________________________________________________________________________________________________
![GitHub](https://img.shields.io/github/license/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite?style=for-the-badge) 
![GitHub pull requests](https://img.shields.io/github/issues-pr/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite?style=plastic)
![GitHub issues](https://img.shields.io/github/issues/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite?style=for-the-badge)
![GitHub branch checks state](https://img.shields.io/github/checks-status/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite/main?style=flat-square)
_________________________________________________________________________________________________________________________________



--------------------------------------------------------------
# Disruptive Portfolio & Business Management Suite
--------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------------------
## Automated deployment of a suite of self hosted, disruptive, browser based applications to manage a portfolio and/or business.
--------------------------------------------------------------------------------------------------------------------------------

A curated collection of browser based applications to help you manage your portfolio, and/or business.

The base set of applications contains tools for software development and devops, as well as applications to help you run and manage your business.

Highly customizable, the application suite can be modified or extended upon easily.

This script will download Vagrant, initiate 3 VirtualBox virtual machines each with a unique set of Dockerized applications, as well as some Linux packaged applications.



_____________________________________________________________________________________________________________________________________________
#### For Official Documentation:

 - [Github - Disruptive Portfolio-Business Management Suite Documentation](https://github.com/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite/tree/main/docs)
 - [GitBook Disruptive Portfolio-Business Management Suite Documentation](https://clickonrefresh.gitbook.io/disruptive-portfolio-and-business-management-suite/)



#### View exapmles of this project:

 - [Clickonrefresh' Dashboard](https://clickondashboard.onthewifi.com)
 - [Clickonrefresh' Portfolio](https://clickonrefresh.onthewifi.com)


_____________________________________________________________________________________________________________________________________________
 

## Dockerized & Packaged Browser-Based Apps Included:
  
   ### Admin Apps
 
      - Nginx Proxy Manager - Proxy Host, Redirects & SSL in a GUI
      - Portainer - Container Management with a GUI
      - Teleport - SSH Server Managemnt
      - Cockpit - A Linux Server Web GUI


   ### Productivity Apps
  
      - Odoo Community Edition - An Open Sourced ERP | CRM | MRP | Accounting | Business Management | E-Commerce | Website Builder | Integrated | Customisable
      - Visual Studio Code - Arguably the best browser based code editor / IDE
      - Organizr - An Application and Favourites Dashboard, easily keep track of all your links, servers and projects.
      - Bookstack - Self Hosted Knowledge Base

   ### Extras
   
      - Homeassistant - Home Automation


#### Packaged Applications:

    - Fail2ban
    - Noip.com Dynamic Update Client
    - Docker
    - Vagrant & VirtualBox


#### Dependencies Included:

    - wget
    - curl
    - zip

-------

### COMING SOON: 

    - Jellyfin
    - Full stack React/Express/MongoDB app
    - PfSense
-------


_____________________________________________________________________________________________________________________________________________
_____________________________________________________________________________________________________________________________________________


# System Requirements

#### Minimum System Requirements:

    - 4 vCPU
    - 4 Gb Available RAM
    - 60 Gb Available Storage Space

#### Recommended System Requirements:

    - 8 vCPU
    - 8 G Available RAM
    - 100 G Available Storage Space









_____________________________________________________________________________________________________________________________________________
_____________________________________________________________________________________________________________________________________________

#### The script will run, deploying virtualbox and vagrant, then initiate the virtual machines with their own unique set of install scripts:


  Virtual Machines:
               
                - Ubuntu 20.04 LTS - Hashicorp Image
                  
                    - Administration:
                        - Nginx Proxy Manager
                        - Cockpit
                        - Portainer
                    
                    - Main Applications:
                        - Odoo CE (with Pandas, 3rd Party Apps)
                        - Organizr
                        - Bookstack
                    
                    - Secondary Applications:
                        - Visual Studio Code
                        - Teleport
                        - HomeAssistant



_____________________________________________________________________________________________________________________________________________
_____________________________________________________________________________________________________________________________________________

# To run the script:

### Create a new directory and clone the Github repository.

```
mkdir myprojects

cd myprojects

git clone https://github.com/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite.git
```

### Navigate into the project folder, then execute the script.

```
cd DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/

chmod +x main.sh

./main.sh
```






_____________________________________________________________________________________________________________________________________________
_____________________________________________________________________________________________________________________________________________

# Post Installation Setup

#### The easiest way to configure database and application password in the yaml files is to clone this project, and alter the configurations to your liking before running the script.

##### All of the files needing editing are contained within the following directories within the project:

  1. Admin Apps - DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/vms/admin/docker/
  2. Main Apps - DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/vms/mainapps/docker/
  3. 2nd Apps - DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/vms/2ndapps/docker/

#### Alternatively you will need to alter the configurations after deploying and re-run the containers.


### Teleport
 * Please use this awesome guide to help you finish configuring teleport
 * [The Digital Life - Manage Your SSH Servers](https://youtu.be/nk1jfIAL5qE?t=465)
 * 'vagrant ssh' into the teleport machine, then follow the video guide at the stamp that is linked.
 
 
### You will need 9 Domain Names / Sub-Domain Names if you wish to access all of your apps over SSL

##### The noip script will be downloaded during this deployment, you will need to ssh into each machine individually and run their respective noip.com DUC scripts to configure your hostnames:

```
{
  vagrant ssh

  cd /opt/noip/Automate-Noip-DUC-main

  sudo bash main.sh
}
```




_____________________________________________________________________________________________________________________________________________
_____________________________________________________________________________________________________________________________________________

## I am looking for people to help contribute towards the documentation and development of this project.
### If you are interested please email me @ clickonrefresh@gmail.com
