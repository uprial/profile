#!/bin/bash

set -e

if [[ -z `grep "^LC_ALL=" ~/.bashrc` ]]; then
    echo "" >> ~/.bashrc
    echo "# Rial locale definitions" >> ~/.bashrc
    echo 'export LC_ALL="en_US.UTF-8"' >> ~/.bashrc
    echo 'export LC_CTYPE="en_US.UTF-8"' >> ~/.bashrc
fi
