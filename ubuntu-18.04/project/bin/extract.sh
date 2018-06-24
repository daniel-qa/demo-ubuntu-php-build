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
main_extract () {
	cd "$THE_VAR_DIR_PATH"

	#tar xf php-5.4.45.tar.bz2
	tar xf "$THE_PHP_SOURCE_FILE_NAME"
}

main_extract "$@"
#
### Tail: main #################################################################
