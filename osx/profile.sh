#!/bin/bash

set -e

sed -i '' "s/^alias l='ls \-CF'/#alias l='ls -CF'/g" ~/.profile

if [[ -z `grep "^alias \.\.=" ~/.profile` ]]; then
    echo "" >> ~/.profile
    echo "# Rial local aliases definitions" >> ~/.profile
    echo "alias ..='cd ..'" >> ~/.profile
    echo "alias l='ls -laG'" >> ~/.profile
    echo "alias gd='git diff --color'" >> ~/.profile
    echo "alias r='screen -RD mine'" >> ~/.profile
    echo "alias gdcl=\"find /Volumes/IlyaT7/ -name '.DS_Store' -exec rm {} \; ; find /Volumes/IlyaT7/ -name '._*' -exec rm {} \;\"" >> ~/.profile
    echo "export VISUAL=vim" >> ~/.profile
fi

if [[ ! -f ~/.vimrc || -z `grep "^:syntax on" ~/.vimrc` ]]; then
    echo ":syntax on" >> ~/.vimrc
    echo "set hlsearch" >> ~/.vimrc
    echo "set ts=4" >> ~/.vimrc
    echo "set sts=4" >> ~/.vimrc
    echo "set sw=4" >> ~/.vimrc
    echo "set modeline" >> ~/.vimrc
    echo "set et" >> ~/.vimrc
    echo "set mouse=r" >> ~/.vimrc
fi

if [[ ! -f ~/.gitconfig || -z `grep "^[color]" ~/.gitconfig` ]]; then
    echo "[color]" >> ~/.gitconfig
    echo "    ui = true" >> ~/.gitconfig
fi
