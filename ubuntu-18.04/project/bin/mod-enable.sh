#!/usr/bin/env bash


### Head: init #################################################################
#
THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"
#
### Tail: init #################################################################


### Head: main #################################################################
#
main_mod_enable () {
	sudo a2dismod mpm_event
	sudo a2enmod mpm_prefork

	sudo a2dismod php7.2
	sudo a2enmod php5
}

main_mod_enable "$@"
#
### Tail: main #################################################################

### Head: note #################################################################
#
# $ apt-get download libapache2-mod-php7.2
# $ dpkg -e libapache2-mod-php7.2_7.2.5-0ubuntu0.18.04.1_amd64.deb
# $ cat DEBIAN/postinst
#
### Tail: note #################################################################
