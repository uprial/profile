#!/bin/bash

set -e

dnf install -y nginx

systemctl enable nginx

firewall-cmd --permanent --add-service=http

firewall-cmd --reload

cp -f `dirname $0`/iroslyakov.conf /etc/nginx/conf.d/iroslyakov.conf

systemctl restart nginx
