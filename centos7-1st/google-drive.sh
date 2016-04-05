#!/bin/bash

set -e

`dirname $0`/gdrive.sh

source ~/.bashrc

gdrive sync list > /dev/null

parent=$(gdrive list --query "name = 'Mine'" --no-header | cut -f1 -d' ')
gdrive download query --recursive \
                      --path ~/Mine "'${parent}' in parents" || :
