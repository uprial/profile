#!/bin/bash

set -e

# Not actually needed in Ubuntu-20
ufw allow OpenSSH
ufw allow 25565/tcp
ufw allow 80/tcp
ufw enable
