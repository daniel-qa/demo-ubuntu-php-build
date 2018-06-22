#!/usr/bin/env bash


# https://help.ubuntu.com/18.04/serverguide/httpd.html.en
sudo apt-get install apache2
# https://help.ubuntu.com/18.04/serverguide/php.html.en
sudo apt install php libapache2-mod-php
## above for my environment



## below for build essential
sudo apt-get install build-essential
sudo apt-get build-dep libapache2-mod-php
#sudo apt-get build-dep libapache2-mod-php7.2
#sudo apt-get install apache2-dev
#sudo apt-get install libtool-bin
