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
main_mod_install () {
	sudo cp "$THE_ASSET_LOAD_FILE_PATH" /etc/apache2/mods-available/php5.load
}

main_mod_install "$@"
#
### Tail: main #################################################################
