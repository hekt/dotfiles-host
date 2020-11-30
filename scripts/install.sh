#!/bin/bash

set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
FILES=(
    ".tmux.conf"
    ".tmux.d"
    ".emacs.d"
    ".hammerspoon"
)

for f in ${FILES[@]}; do
    if [ ! -e $HOME/$f ] || [ -h $HOME/$f ]; then
        ln -fns $PARENT_DIR/files/$f $HOME/$f
    fi
done
