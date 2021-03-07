#!/bin/bash

set -e

source ~/.bashrc

cp -f `dirname $0`/yandex.repo /etc/yum.repos.d/yandex.repo
rpm --import http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG
yum install -y yandex-disk

yandex-disk setup
