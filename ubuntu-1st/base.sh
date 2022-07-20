#!/bin/bash

set -e

git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

apt install -y \
               screen \
               net-tools
