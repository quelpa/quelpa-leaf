EMACS ?= emacs
EASK ?= eask

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
	$(EASK) test ert ./test/*.el

test-install:
	@echo "Testing..."
	$(EASK) load ./test/test-install.el

checkdoc:
	@echo "Run checkdoc..."
	$(EASK) lint checkdoc

lint:
	@echo "Run package-lint..."
	$(EASK) lint package

clean:
	$(EASK) clean all
