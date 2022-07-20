#!/bin/bash

set -e

`dirname $0`/locale.sh
source ~/.bashrc

`dirname $0`/base.sh
`dirname $0`/profile.sh
`dirname $0`/yandex-disk.sh
`dirname $0`/java.sh
`dirname $0`/python.sh
`dirname $0`/fw.sh
cp -f `dirname $0`/../g /usr/local/bin/
cp -f `dirname $0`/bin/* /usr/bin/

echo 'DONE'
