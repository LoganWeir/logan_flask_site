FROM ubuntu:18.04
MAINTAINER Logan Weir "loganweir@gmail.com"
ENV REFRESHED_AT 2/23/2017

RUN apt-get update && apt-get upgrade

RUN apt-get install git -y -q

RUN apt-get install nginx -y -q

RUN apt-get install python3-pip python3-dev python3-venv build-essential libssl-dev libffi-dev python3-setuptools -y -q

ENTRYPOINT /bin/sh