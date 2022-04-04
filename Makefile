SHELL := /usr/bin/env bash

EMACS ?= emacs
EASK ?= eask

TEST-FILES := $(shell ls test/quelpa-leaf-*.el)

.PHONY: clean checkdoc lint package install compile test test-install

ci: clean package install compile test-install

package:
	@echo "Packaging..."
	$(EASK) package

install:
	@echo "Installing..."
	$(EASK) install

compile:
	@echo "Compiling..."
	$(EASK) compile

test:
	@echo "Testing..."
	$(EASK) exec ert-runner -L . $(LOAD-TEST-FILES) -t '!no-win' -t '!org'

test-install:
	@echo "Testing..."
	$(EASK) load ./test/test-install.el

clean:
	rm -rf .eask *.elc
