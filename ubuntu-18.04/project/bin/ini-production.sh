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
main_ini_production () {
	cd "$THE_PHP_SOURCE_DIR_PATH"
	sudo cp php.ini-production "$THE_PHP_INI_INSTALL_FILE_PATH"
}

main_ini_production "$@"
#
### Tail: main #################################################################
