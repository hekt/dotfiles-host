[![Build Status](https://travis-ci.org/hekt/dotfiles-host.svg?branch=master)](https://travis-ci.org/hekt/dotfiles-host)

# Usage

```console
$ git clone git@github.com:hekt/dotfiles-host.git
$ cd dotfiles-host
$ make install # make symlinks on $HOME
```

## Restore Emacs packages

1. `M-x package-refresh-contents`
2. `M-x package-install-selected-packages`

## Visual Studio Code

1. Install VS Code
2. Make symlink from `vscode/{keybindings.json,settings.json,snippets}` to `{VSCODE_USER_DATA_DIR}/User/`
    - VSCODE_USER_DATA_DIRECTORY
        - macOS: `$HOME/Library/Application Support/Code/`
