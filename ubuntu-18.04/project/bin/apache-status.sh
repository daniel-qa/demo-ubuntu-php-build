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
main_apache_status () {
	/etc/init.d/apache2 status
	# systemctl status apache2
	# systemctl status apache2.service
	# journalctl -xe
}

main_apache_status "$@"
#
### Tail: main #################################################################
