#!/bin/bash

set -e

PROFILE=~/.zprofile

sed -i '' "s/^alias l='ls \-CF'/#alias l='ls -CF'/g" ${PROFILE}

if [[ -z `grep "^alias \.\.=" ${PROFILE}` ]]; then
    echo "" >> ${PROFILE}
    echo "# Rial local aliases definitions" >> ${PROFILE}
    echo "alias ..='cd ..'" >> ${PROFILE}
    echo "alias l='ls -laG'" >> ${PROFILE}
    echo "alias gd='git diff --color'" >> ${PROFILE}
    echo "alias r='screen -RD mine'" >> ${PROFILE}
    echo "alias gdcl=\"find /Volumes/IlyaT7/ -name '.DS_Store' -exec rm {} \; ; find /Volumes/IlyaT7/ -name '._*' -exec rm {} \;\"" >> ${PROFILE}
    echo "export VISUAL=vim" >> ${PROFILE}
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
