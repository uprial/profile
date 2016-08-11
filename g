#!/usr/bin/env bash

if [ -z "$@" ]; then
	echo "Usage:"
	echo "  g     PATTERN" &1>2
	exit 2
fi
grep --recursive --ignore-case --color "$@" *
