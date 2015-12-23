#!/bin/bash

set -e

yum install -y epel-release
yum update -y
git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

yum install -y gcc ImageMagick-devel unzip screen vim
yum install -y bc
