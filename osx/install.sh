#!/bin/bash

set -e

`dirname $0`/base.sh
`dirname $0`/profile.sh
sudo cp -f `dirname $0`/../g /usr/local/bin/

echo 'DONE'
