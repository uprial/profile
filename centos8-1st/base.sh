#!/bin/bash

set -e

yum install -y epel-release
yum update -y
git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

yum config-manager --set-enabled PowerTools

dnf config-manager --set-enabled PowerTools

yum install -y \
               bc \
               gcc \
               ImageMagick-devel \
               screen \
               tar \
               tree \
               unzip \
               vim
