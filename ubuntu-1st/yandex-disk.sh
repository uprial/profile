#!/bin/bash

set -e

if [[ -z `dpkg -l | grep yandex-disk` ]]; then
    echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" \
            | tee -a /etc/apt/sources.list.d/yandex.list > /dev/null \
            && wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- \
            | apt-key add - \
            && apt update -y \
            && apt install -y yandex-disk

    yandex-disk setup
    yandex-disk status
else
    echo "yandex-disk already installed"
fi
