#!/bin/bash

set -e

apt update

apt-get update -y
git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

apt-get install -y bc \
                   gcc \
                   imagemagick \
                   make \
                   pylint \
                   realpath \
                   screen \
                   tar \
                   unzip \
                   vim
