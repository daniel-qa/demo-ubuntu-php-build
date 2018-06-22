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
main_prepare () {
	#sudo apt-get install apache2
	sudo apt-get install build-essential
	sudo apt-get build-dep libapache2-mod-php7.2
	#sudo apt-get install apache2-dev
	#sudo apt-get install libtool-bin
}

main_prepare "$@"
#
### Tail: main #################################################################
