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
main_info_install () {
	sudo cp "$THE_ASSET_INFO_FILE_PATH" "/var/www/html/info.php"
}

main_info_install "$@"
#
### Tail: main #################################################################
