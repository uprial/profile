#!/bin/bash

set -e

yum update -y
git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

yum install -y gcc ImageMagick-devel unzip screen vim
