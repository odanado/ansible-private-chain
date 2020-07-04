#!/bin/bash

set -eu

ROOT_DIR=/etc/geth.service
DATA_DIR=$ROOT_DIR/node0/

if [ ! -d $DATA_DIR ]; then
    echo "initialize geth"
    geth \
        --datadir $DATA_DIR \
        init $ROOT_DIR/genesis.json

    geth account import $ROOT_DIR/private-key.txt -datadir $DATA_DIR --password $ROOT_DIR/password.txt
fi
