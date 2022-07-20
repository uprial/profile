#!/bin/bash

set -e

`dirname $0`/base.sh
`dirname $0`/profile.sh
#`dirname $0`/yandex-disk.sh
`dirname $0`/java.sh
`dirname $0`/python.sh
cp -f `dirname $0`/../g /usr/local/bin/

echo 'DONE'
