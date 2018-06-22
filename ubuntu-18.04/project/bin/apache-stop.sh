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
main_apache_stop () {
	sudo /etc/init.d/apache2 stop
	# sudo systemctl stop apache2
}

main_apache_stop "$@"
#
### Tail: main #################################################################
