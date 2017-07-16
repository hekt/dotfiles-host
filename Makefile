.PHONY: install
install: install-symlink

.PHONY: install-symlink
install-symlink:
	@bash ./scripts/install-symlink.sh

.PHONY: test
test:
	true
