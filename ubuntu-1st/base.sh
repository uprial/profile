#!/bin/bash

set -e

apt update

git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

apt install -y screen
