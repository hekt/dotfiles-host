#!/bin/bash

set -e
set -u
set -x

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)

# dotfile exists
DOT_FILES=`ls -A $PARENT_DIR/files`
for f in ${DOT_FILES[@]}; do
    test -e $HOME/$f
done

# symlink
test -h $HOME/.tmux.conf
test -h $HOME/.tmux.d
test -h $HOME/.emacs.d
test -h $HOME/.hammerspoon
