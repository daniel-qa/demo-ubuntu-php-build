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
main_ini_development () {
	cd "$THE_PHP_SRC_DIR_PATH"
	sudo cp php.ini-development /opt/php-5.4.45/lib/php.ini
}

main_ini_development "$@"
#
### Tail: main #################################################################
