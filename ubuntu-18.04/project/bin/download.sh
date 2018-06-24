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
main_download () {

	cd "$THE_VAR_DIR_PATH"

	# http://php.net/releases/
	# http://php.net/get/php-5.4.45.tar.bz2/from/a/mirror
	#wget -c 'http://php.net/get/php-5.4.45.tar.bz2/from/this/mirror' -O "php-5.4.45.tar.bz2"
	wget -c "$THE_PHP_SOURCE_URL" -O "$THE_PHP_SOURCE_FILE_NAME"
	#wget -c 'http://tw2.php.net/get/php-5.4.45.tar.bz2/from/this/mirror' -O php-5.4.45.tar.bz2

}

main_download "$@"
#
### Tail: main #################################################################
