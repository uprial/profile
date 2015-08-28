#!/bin/bash

set -e

sed -i "s/^alias l='ls \-CF'/#alias l='ls -CF'/g" ~/.bashrc

if [[ -z `grep "^alias \.\.=" ~/.bashrc` ]]; then
    echo "alias ..='cd ..'" >> ~/.bashrc
    echo "alias l='ls -laG'" >> ~/.bashrc
    echo "alias gd='git diff --color'" >> ~/.bashrc
    echo "alias r='screen -RD mine'" >> ~/.bashrc
    echo "export VISUAL=vim" >> ~/.bashrc
fi

if [[ ! -f ~/.vimrc || -z `grep "^:syntax on" ~/.vimrc` ]]; then
    echo ":syntax on" >> ~/.vimrc
    echo "set hlsearch" >> ~/.vimrc
    echo "set ts=4" >> ~/.vimrc
    echo "set sts=4" >> ~/.vimrc
    echo "set sw=4" >> ~/.vimrc
    echo "set modeline" >> ~/.vimrc
    echo "set et" >> ~/.vimrc
fi

