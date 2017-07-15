#!/bin/bash

set -u

PARENT_DIR=$(cd $(dirname $0); cd ..; pwd)
FILES=(
    ".tmux.conf"
    ".tmux.d"
    ".emacs.d"
)

for f in ${FILES[@]}; do
    # if symlink to directory already exists
    # `ln` creates symlink on linked directory
    if [ -e $HOME/$f ]; then
        echo "$HOME/$f already exists"
    else
        ln -s $PARENT_DIR/$f $HOME/$f
    fi
done
