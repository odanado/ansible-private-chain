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
    --networkid '{{ geth.networkId }}' \
    --mine \
    --miner.etherbase '{{ geth.accounts[0].address }}' \
    --miner.gasprice 0 \
    --unlock '{{ geth.accounts | map(attribute='address') | join(",") }}' \
    --password /etc/geth.service/password.txt \
    --allow-insecure-unlock