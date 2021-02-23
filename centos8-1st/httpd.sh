#!/bin/bash

set -e

firewall-cmd --permanent --add-service=http
firewall-cmd --reload

systemctl stop httpd.service
systemctl disable httpd.service
