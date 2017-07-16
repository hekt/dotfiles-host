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
