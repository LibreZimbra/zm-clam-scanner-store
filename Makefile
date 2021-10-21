# SPDX-License-Identifier: AGPL-3.0-or-later

ANT_TARGET = $(ANT_ARG_BUILDINFO) jar

all: build-ant

include build.mk

install:
	$(call mk_install_dir, lib/ext/clamscanner)
	cp build/zm-clam-scanner-store*.jar $(INSTALL_DIR)/lib/ext/clamscanner/clamscanner.jar

clean: clean-ant
