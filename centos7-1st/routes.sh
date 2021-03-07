#!/bin/bash

set -e


iptables -I INPUT -p tcp --dport 25565 -j ACCEPT
iptables -I INPUT -p tcp --dport 80 -j ACCEPT

# CentOS 8 only

#systemctl enable firewalld
#systemctl start firewalld

#firewall-cmd --permanent --add-port=25565/tcp
#firewall-cmd --permanent --add-port=80/tcp
