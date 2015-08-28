#!/bin/bash

set -e

if ! rpm -q yandex-disk; then
    cp `dirname $0`/yandex.repo /etc/yum.repos.d/yandex.repo
    rpm --import http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG
    yum install -y yandex-disk

    yandex-disk setup
fi
