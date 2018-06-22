
prepare:
	@prepare.sh
.PHONY: prepare


configure:
	@configure.sh
.PHONY: configure

help-configure:
	@configure-help.sh
.PHONY: help-configure


build:
	@build.sh
.PHONY: build


install:
	@install.sh
.PHONY: install


remove:
	@remove.sh
.PHONY: remove
