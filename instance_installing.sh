#!/bin/bash

sudo apt-get update && apt-get upgrade

sudo apt-get install git -y -q

sudo apt-get install nginx -y -q

sudo apt-get install python3-pip python3-dev python3-venv -y -q

sudo pip3 install virtualenv

sudo git clone https://github.com/LoganWeir/logan_flask_site.git

sudo mv /home/ubuntu/logan_flask_site/mysite.service /etc/systemd/system/mysite.service