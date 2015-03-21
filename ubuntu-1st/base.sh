#!/bin/bash

set -e

apt-get update -y
apt-get install -y git
git config --global user.name "Ilya Roslyakov"
git config --global user.email uprial@gmail.com

apt-get install -y make screen realpath gcc unzip
