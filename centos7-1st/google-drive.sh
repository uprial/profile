#!/bin/bash

set -e

`dirname $0`/gdrive.sh

source ~/.bashrc

gdrive sync list > /dev/null

`dirname $0`/bin/google-download || :
