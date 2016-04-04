#!/bin/bash

set -e

yum install -y epel-release
yum update -y
git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

yum install -y \
               bc \
               gcc \
               ImageMagick-devel \
               pylint \
               screen \
               unzip \
               vim
