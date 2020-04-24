#!/bin/bash

set -e

firewall-cmd --permanent --add-port=25565/tcp
firewall-cmd --permanent --add-port=80/tcp
