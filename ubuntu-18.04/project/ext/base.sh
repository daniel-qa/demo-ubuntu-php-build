## THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

find_dir_path () {
	if [ ! -d $(dirname -- "$1") ]; then
		dirname -- "$1"
		return 1
	fi
	echo $(cd -P -- "$(dirname -- "$1")" && pwd -P)
}

##THIS_BASE_DIR_PATH=$(find_dir_path $0)

is_debug () {
	if [ "$DEBUG_BUILD_PHP" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {


	THE_PLAN_DIR_PATH=$(find_dir_path "$THE_BASE_DIR_PATH/../.")


	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_BIN_DIR_NAME"

	THE_EXT_DIR_NAME="ext"
	THE_EXT_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_EXT_DIR_NAME"

	THE_VAR_DIR_NAME="var"
	THE_VAR_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_VAR_DIR_NAME"

	THE_ASSET_DIR_NAME="asset"
	THE_ASSET_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_ASSET_DIR_NAME"


	THE_PHP_SRC_DIR_NAME="php-5.4.45"
	THE_PHP_SRC_DIR_PATH="$THE_VAR_DIR_PATH/$THE_PHP_SRC_DIR_NAME"

	THE_ASSET_LOAD_FILE_NAME="php5.load"
	THE_ASSET_LOAD_FILE_PATH="$THE_ASSET_DIR_PATH/$THE_ASSET_LOAD_FILE_NAME"

	THE_ASSET_INFO_FILE_NAME="info.php"
	THE_ASSET_INFO_FILE_PATH="$THE_ASSET_DIR_PATH/$THE_ASSET_INFO_FILE_NAME"

}

base_var_dump () {

	is_not_debug && return 0

	echo
	echo "### Head: var_dump #############################################################"
	echo "#"
	echo "#"


	echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"


	echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	echo "THE_EXT_DIR_NAME=$THE_EXT_DIR_NAME"
	echo "THE_EXT_DIR_PATH=$THE_EXT_DIR_PATH"

	echo "THE_VAR_DIR_NAME=$THE_VAR_DIR_NAME"
	echo "THE_VAR_DIR_PATH=$THE_VAR_DIR_PATH"

	echo "THE_ASSET_DIR_NAME=$THE_ASSET_DIR_NAME"
	echo "THE_ASSET_DIR_PATH=$THE_ASSET_DIR_PATH"

	echo "THE_ASSET_LOAD_FILE_NAME=$THE_ASSET_LOAD_FILE_NAME"
	echo "THE_ASSET_LOAD_FILE_PATH=$THE_ASSET_LOAD_FILE_PATH"

	echo "#"
	echo "#"
	echo "### Tail: var_dump #############################################################"
	echo
}
