#!/bin/bash

sed -i "s/^alias l='ls \-CF'/#alias l='ls -CF'/g" ~/.bashrc

if [[ -z `grep "^alias \.\.=" ~/.bashrc` ]]; then
	echo "alias ..='cd ..'" >> ~/.bashrc
	echo "alias l='ls -laG'" >> ~/.bashrc
fi

if [[ -z `grep "^alias r=" ~/.profile` ]]; then
	echo "alias r='screen -RD mine'" >> ~/.profile
fi

if [[ ! -f ~/.vimrc || -z `grep "^:syntax on" ~/.vimrc` ]]; then
	echo ":syntax on" >> ~/.vimrc
    echo "set ts=4" >> ~/.vimrc
    echo "set sts=4" >> ~/.vimrc
    echo "set sw=4" >> ~/.vimrc
    echo "set modeline" >> ~/.vimrc
    echo "set et" >> ~/.vimrc
fi

