#!/bin/bash

set -e

systemctl enable firewalld
systemctl start firewalld

firewall-cmd --permanent --add-port=25565/tcp
firewall-cmd --permanent --add-port=80/tcp
