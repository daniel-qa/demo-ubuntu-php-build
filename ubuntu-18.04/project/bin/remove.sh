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
main_remove () {

	sudo rm "/usr/lib/apache2/modules/libphp5.so" -f
	sudo rm "/etc/apache2/mods-available/php5.load" -f
	sudo rm "$THE_PHP_INSTALL_DIR_PATH" -rf

	#sudo rm "/var/www/html/info.php"
}

main_remove "$@"
#
### Tail: main #################################################################
