#!/bin/bash

set -e

source ~/.bashrc

if gdrive help > /dev/null; then
    exit 0
fi

FILE=go1.12.5.linux-amd64.tar.gz
INSTALL_PATH=/usr/local

if [ ! -f ${FILE} ]; then
    wget https://storage.googleapis.com/golang/${FILE}
fi

if ! which go > /dev/null; then
    tar -C ${INSTALL_PATH} -xzf ${FILE}
fi

if [[ -z `grep ":${INSTALL_PATH}/go/bin" ~/.bashrc` ]]; then
    echo "" >> ~/.bashrc
    echo "# Golang related definitions" >> ~/.bashrc
    echo "GOPATH=\$HOME/gopath" >> ~/.bashrc
    echo "export GOPATH" >> ~/.bashrc
    echo "PATH=\$PATH:${INSTALL_PATH}/go/bin:\$GOPATH/bin" >> ~/.bashrc
    echo "export PATH" >> ~/.bashrc

    source ~/.bashrc
fi

go get github.com/prasmussen/gdrive

# Cleanup
rm -f ${FILE}
