#!/bin/bash

set -e

yum install -y \
    pylint \
    python3 \
    python3-pip

pip3 install --upgrade pip
pip3 install PyYAML
