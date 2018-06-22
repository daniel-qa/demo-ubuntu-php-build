#!/usr/bin/env bash


sudo a2dismod mpm_event
sudo a2enmod mpm_prefork

sudo a2dismod php7.2
sudo a2enmod php5


### Head: note #################################################################
#
# $ apt-get download libapache2-mod-php7.2
# $ dpkg -e libapache2-mod-php7.2_7.2.5-0ubuntu0.18.04.1_amd64.deb
# $ cat DEBIAN/postinst
#
### Tail: note #################################################################
