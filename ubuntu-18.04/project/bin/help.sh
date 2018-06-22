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
main_help () {
	cat <<EOF

Usage:

$ make [command]

Ex:

$ make
$ make help

$ make prepare

$ make download
$ make extract

$ make configure
$ make build

$ make install

$ make mod-install
$ make mod-enable

$ make ini-production
$ make ini-development

$ make apache-restart
$ make apache-reload
$ make apache-status
$ make apache-start
$ make apache-stop

$ make log-view

$ make info-install
$ make info-view
$ make info-remove

Debug:

$ export DEBUG_BUILD_PHP=true

EOF
}

main_help "$@"
#
### Tail: main #################################################################
