# Prerequisites

## Configuration Requirements

### Docker-Compose

Before running the script for the project, it is highly recommended to change the user and password details for each applications' docker-compose.yml files.

Add your domain name URL if the docker-compose file calls for it.

For post install configuration of Teleport, please use this awesome guide:

* [The Digital Life - Manage YOur SSH Servers](https://youtu.be/nk1jfIAL5qE?t=465)

then, 'vagrant ssh' into the teleport machine, follow the video guide at the stamp that is linked.

\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

## System Requirements

### Minimum System Requirements:

> * 4 vCPU
> * 4 Gb Available RAM
> * 60 Gb Available Storage Space

### Recommended System Requirements:

> * 8 vCPU
> * 8 G Available RAM
> * 100 G Available Storage Space

### Recommended Operating System:

> * Ubuntu LTS versions.
> * Whils this script is tailored for use on a local server hosting Debian based operating systems, it can easily be altered to suit different environments.





## Odoo Addons

To install python pandas in the odoo container:

```text
sudo docker exec -u root -it <containername> /bin/bash
```

Once inside the docker container:

```text
cd /usr/lib/python3/dist-packages
pip3 install pandas
exit
```



> THIS  NEXT STEP HAS BEEN AUTOMATED. IF YOU WISH TO USE ALTERNATE APPS OR VERSIONS YOU WILL NEED TO DO THIS STEP

**For Odoo 3rd Party Apps download:**

* [Ohrms Core](https://apps.odoo.com/apps/modules/14.0/ohrms_core/)  
* [Accounting Apps](https://apps.odoo.com/apps/modules/14.0/base_accounting_kit/)

**From the Odoo Apps Store, and place the files in the following directory:**

'DisruptivePortfolio-BusinessManagemnetSuite/VagrantHost/vms/mainapps/docker/odoo/addons'

The script will copy the addons to the virtual machine and extract them.



