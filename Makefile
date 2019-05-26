FORCE:
.PHONY: FORCE

#
# install
#
.PHONY: install

install:
	@bash ./scripts/install.sh

#
# test
#
.PHONY: test

test:
	@bash ./tests/install-test.sh

#
# vs code
#
.PHONY: install-vs-code-extensions export-installed-vs-code-extensions-list

install-vs-code-extensions:
	code --list-extensions | comm -23 ./files/vscode/extensions-list.txt - | code --install-extension

export-installed-vs-code-extensions-list: files/vscode/extensions-list.txt

files/vscode/extensions-list.txt: FORCE
	code --list-extensions > ./files/vscode/extensions-list.txt