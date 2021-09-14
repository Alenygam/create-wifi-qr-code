NAME=create-wifi-qr-code
VERSION=1.0.0

INSTALL_FILES=wifiqr
DOC_FILES=*.md

PKG_DIR=wifiqr
PKG_NAME=$(NAME)-$(VERSION)
PKG=$(PKG_DIR)/$(PKG_NAME).tar.gz
SIG=$(PKG_DIR)/$(PKG_NAME).asc

PREFIX?=/usr/local/bin
DOC_DIR=$(PREFIX)/share/doc/$(PKG_NAME)

install:
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done
	mkdir -p $(DOC_DIR)
	cp -r $(DOC_FILES) $(DOC_DIR)/

uninstall:
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	rm -rf $(DOC_DIR)


.PHONY: install uninstall
