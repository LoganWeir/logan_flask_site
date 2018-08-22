#!/bin/bash

sudo apt-get update && apt-get upgrade

sudo apt-get install git -y -q

sudo apt-get install nginx -y -q

sudo apt-get install python3-pip python3-dev python3-venv -y -q

sudo git clone https://github.com/LoganWeir/logan_flask_site.git

sudo mv /home/ubuntu/logan_flask_site/mysite.service /etc/systemd/system/mysite.service

pwd

sudo python3 -m venv /home/ubuntu/logan_flask_site/site/mysite_env/

sudo chown -R ubuntu:ubuntu /home/ubuntu/logan_flask_site/site/mysite_env/

source logan_flask_site/site/mysite_env/bin/activate

pip install -r logan_flask_site/site/requirements.txt

deactivate
