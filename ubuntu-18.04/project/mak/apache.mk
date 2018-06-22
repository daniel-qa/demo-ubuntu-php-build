
mod-install:
	@mod-install.sh
.PHONY: mod-install

mod-enable:
	@mod-enable.sh
.PHONY: mod-enable

mod-disable:
	@mod-disable.sh
.PHONY: mod-disable


apache-start:
	@apache-start.sh
.PHONY: apache-start

apache-stop:
	@apache-stop.sh
.PHONY: apache-stop

apache-status:
	@apache-status.sh
.PHONY: apache-status

apache-restart:
	@apache-restart.sh
.PHONY: apache-restart

apache-reload:
	@apache-reload.sh
.PHONY: apache-reload
