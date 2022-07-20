#!/bin/bash

set -e

ufw enable
ufw allow 25565/tcp
ufw allow 80/tcp
