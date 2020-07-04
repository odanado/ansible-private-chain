#!/bin/bash

set -eu

/usr/bin/geth \
    --verbosity 5 \
    --datadir /etc/geth.service/node0/ \
    --nodiscover \
    --syncmode 'full' \
    --nat none \
    --port 30310 \
    --rpc \
    --rpcaddr '0.0.0.0' \
    --rpcport 8501 \
    --rpcvhosts '*' \
    --rpcapi 'personal,eth,net,web3,txpool,miner,debug' \
    --networkid 3240 \
    --mine \
    --miner.etherbase '0xf61caf985b554e6370fda9242e4e9808cfe85de3' \
    --miner.gasprice 0 \
    --unlock '0xf61caf985b554e6370fda9242e4e9808cfe85de3' \
    --password /etc/geth.service/password.txt \
    --allow-insecure-unlock