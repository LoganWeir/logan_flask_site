#!/bin/bash

sudo apt-get update && apt-get upgrade

sudo apt-get install git -y -q

sudo apt-get install nginx -y -q

sudo apt-get install python3-pip python3-dev python3-venv build-essential libssl-dev libffi-dev python3-setuptools -y -q

sudo git clone https://github.com/LoganWeir/logan_flask_site.git