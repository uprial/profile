#!/bin/bash

set -e

iptables -I INPUT -p tcp --dport 25565 -j ACCEPT
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
