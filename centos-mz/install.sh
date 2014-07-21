#!/bin/bash

set -e

`dirname $0`/base.sh
`dirname $0`/profile.sh
cp -f `dirname $0`/g /usr/local/bin/
