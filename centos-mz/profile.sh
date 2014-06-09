#!/bin/bash

set -e

USERNAME=iroslyakov

if [[ -z `cat /etc/sudoers | grep ${USERNAME}` ]]; then
    chmod 770 /etc/sudoers
    echo "${USERNAME}    ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    chmod 440 /etc/sudoers
fi

change_profile() {
    USER_PATH="$1"

    if [[ ! -f ${USER_PATH}/.bashrc || -z `cat ${USER_PATH}/.bashrc | grep "#applied"` ]]; then
        echo "" >> ${USER_PATH}/.bashrc
        echo "#applied" >> ${USER_PATH}/.bashrc
        echo "alias ..='cd ..'" >> ${USER_PATH}/.bashrc
        echo "alias l='ls -laG'" >> ${USER_PATH}/.bashrc
        echo "alias gd='git diff --color'" >> ${USER_PATH}/.bashrc
        echo "export VISUAL=vim" >> ${USER_PATH}/.bashrc
    fi

    if [[ ! -f ${USER_PATH}/.vimrc ]]; then
        echo ":syntax on" >> ${USER_PATH}/.vimrc
        echo ":set hlsearch" >> ${USER_PATH}/.vimrc
        echo ":set ts=4" >> ${USER_PATH}/.vimrc
        echo ":set sts=4" >> ${USER_PATH}/.vimrc
        echo ":set sw=4" >> ${USER_PATH}/.vimrc
        echo ":set modeline" >> ${USER_PATH}/.vimrc
    fi

}

change_profile "/home/${USERNAME}"
change_profile "/root"
