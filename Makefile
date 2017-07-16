.PHONY: install test

#
# install
#
install:
	@bash ./scripts/install.sh

#
# test
#
test:
	@bash ./tests/install-test.sh
