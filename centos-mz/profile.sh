#!/bin/bash
set -e

USERNAME=iroslyakov

if [[ -z `cat /etc/sudoers | grep ${USERNAME}` ]]; then
    chmod 770 /etc/sudoers
    echo "${USERNAME}    ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    chmod 440 /etc/sudoers
fi

if [[ ! -f ~${USERNAME}/.bashrc || -z `cat ~${USERNAME}/.bashrc | grep "#applied"` ]]; then
    echo "" >> ~${USERNAME}/.bashrc
    echo "#applied" >> ~${USERNAME}/.bashrc
    echo "alias ..='cd ..'" >> ~${USERNAME}/.bashrc
    echo "alias l='ls -laG'" >> ~${USERNAME}/.bashrc
    echo "alias gd='git diff --color'" >> ~${USERNAME}/.bashrc
    echo "export VISUAL=vim" >> ~${USERNAME}/.bashrc
fi

if [[ ! -f /home/${USERNAME}/.vimrc ]]; then
    echo ":syntax on" >> ~${USERNAME}/.vimrc
    echo ":set hlsearch" >> ~${USERNAME}/.vimrc
    echo ":set ts=4" >> ~${USERNAME}/.vimrc
    echo ":set sts=4" >> ~${USERNAME}/.vimrc
    echo ":set sw=4" >> ~${USERNAME}/.vimrc
    echo ":set modeline" >> ~${USERNAME}/.vimrc
fi
