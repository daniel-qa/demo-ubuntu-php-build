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
main_configure () {
	cd "$THE_PHP_SOURCE_DIR_PATH"
	# http://php.net/manual/en/install.unix.apache2.php
	# ./configure --help
	#./configure --with-apxs2=/usr/bin/apxs2 --with-mysql
	#./configure --with-apxs2=/usr/bin/apxs2 --prefix=/opt/php-5.4.45
	./configure --with-apxs2=/usr/bin/apxs2 --prefix="$THE_PHP_INSTALL_DIR_PATH"
	#./configure --with-apxs2=/usr/bin/apxs2 --prefix=/opt/php-5.4.45 --with-config-file-path=/opt/php-5.4.45/conf
}

main_configure "$@"
#
### Tail: main #################################################################
