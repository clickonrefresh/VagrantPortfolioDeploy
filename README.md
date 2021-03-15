
### !!! WARNING!!!!THIS SCRIPT IS IN TESTING PHASE !!! ** USE AT OWN RISK **

### The current configuration is working. Still testing and adding features.



--------------------------------------------------------------
# Disruptive Portfolio & Business Management Suite
--------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
## Automated deployment of a suite of self hosted, disruptive, browser based applications to manage a portfolio and/or business.
----------------------------------------------------------------------------------------------------------------


#### Suited for I.T. Proffessionals

##### Although this base suite is customised for IT professionals, it can be tailored for any industry or individuals needs.


------------------------------------
## Dockerized & Packaged Browser-Based Apps Included:
  
   #### Admin Apps
 
      - Nginx Proxy Manager - Proxy Host, Redirects & SSL in a GUI
      - Portainer - Container Management with a GUI
      - Teleport - SSH Server Managemnt
      - Cockpit - An Admin GUI for Linux


   #### Productivity Apps
  
      - Odoo Community Edition - An Open Sourced ERP | CRM | MRP | Accounting | Business Management | E-Commerce | Website Builder | Integrated | Customisable
      - Visual Studio Code - Arguably the best browser based code editor / IDE
      - Organizr - An Application and Favourites Dashboard, easily keep track of all your links, servers and projects.
      - Bookstack - Self Hosted Knowledge Base

   #### Extras
   
      - Homeassistant - Home Automation



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
    - 4 G Available RAM
    - 60 G Available Storage Space

#### Recommended System Requirements:

    - 8 vCPU
    - 8 G Available RAM
    - 100 G Available Storage Space

-----------------------------------------------------------------------


### Highly extensible and customizable ###

__This script will download Vagrant, initiate 3 virtual machines each with a unique set of dockerized applications, as well as some Linux packaged apps__.


--------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
### To run this script:

##### Some components of this project need to be configured manually.

###### For Odoo 3rd Party Apps download:
  - [Ohrms Core](https://apps.odoo.com/apps/modules/14.0/ohrms_core/)  
  - [Accounting Apps](https://apps.odoo.com/apps/modules/14.0/base_accounting_kit/)
   
##### From the Odoo Apps Store, and place the files in  newly created directory:

  '~/Downloads/odoo/addons'

----------
*adhere to this naming convention otherwise you will need to alter the entire script*

###### Take care to name files correctly otherwise the script will fail. This is a feature I am working on improving.


----------
## ! Please adhere to the naming convention put forth.
----------




-------
##### if you change this name you will need to adjust various files including 
      config.vm.provision "file" source: "<path>"
      config.vm.provision "INLINE" shell
-------  

# Create a new directory to hold the project and clone the repo:

` mkdir ~/myvagrantprojects `

` cd ~/myvagrantprojects `

` git clone https://github.com/clickonrefresh/DisruptivePortfolio-BusinessManagementSuite.git `



### Before executing the script:
 
##### DO NOT RENAME THE FILES, DO NOT MOVE THEM.


### You will need to alter the user-names, passwords, and FQDN's in all of the 'docker-compose.yml' files to suit our needs. 
 
##### All of the files needing editing are contained within the following directories within the project:

  1. Admin Apps - DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/vms/admin/docker/
  2. Main Apps - DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/vms/mainapps/docker/
  3. 2nd Apps - DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/vms/2ndapps/docker/




### Once the files have been edited, and odoo addons been copied, navigate into "/VagrantHost/" and execute the script.


` cd DisruptivePortfolio-BusinessManagementSuite-main/VagrantHost/ `
 
` chmod +x main.sh `
 
` ./main.sh ` 
         
        OR 
 
` sh main.sh ` 
 
        OR 
 
` bash main.sh ` 
 
 
 
 
 

 
 
 
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
                        - Odoo CE (with Pandas, 3rd Party Apps)
                        - Organizr
                        - Bookstack
                    
                    - Secondary Applications:
                        - Visual Studio Code
                        - Teleport
                        - HomeAssistant








---------------------------------------------------------------------------------
 - Each 'VM' is deployed with fail2ban, docker and an un-executed script that I wrote for Noip.com DUC (https://github.com/clickonrefresh/Automate-Noip-DUC).
 
 - Portainer is deployed to manage the entire docker swarm.

---------------------------------------------------------------------





##### The easiest way to configure database and application password in the yaml files is to fork this project, and alter the configurations to your liking.
Alternatively you will need to alter the configurations after deploying and re-run the containers.






-------------------------------------


### You will need 9 Domain Names / Sub-Domain Names if you wish to access all of your apps over SSL

##### The noip script will be downloaded during this deployment, you will need to ssh into each machine individually and run their respective noip.com DUC scripts to configure your hostnames:

```
{
  vagrant ssh

  cd /opt/noip/Automate-Noip-DUC-main

  sudo bash main.sh
}
```
-------------------

## I am looking for people to help contribute towards the documentation and development of this project.
### If you are interested please email me @ clickonrefresh@gmail.com
