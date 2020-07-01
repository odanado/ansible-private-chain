#!/bin/bash

set -eu

/usr/bin/geth \
    --verbosity 5 \
    --datadir /etc/geth.service/node0/ \
    --syncmode 'full' \
    --nat none \
    --nodiscover \
    --port 30310 \
    --txpool.journal '' \
    --rpc \
    --rpcaddr '0.0.0.0' \
    --rpcport 8501 \
    --rpcvhosts '*' \
    --rpcapi 'personal,db,eth,net,web3,txpool,miner,debug' \
    --ws \
    --wsaddr 0.0.0.0 \
    --wsport 8546 \
    --wsorigins '*' \
    --wsapi 'personal,db,eth,net,web3,txpool,miner,debug' \
    --networkid 50 \
    --gasprice '2000000000' \
    --targetgaslimit '0x4c4b400000' \
    --mine \
    --etherbase '0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3' \
    --allow-insecure-unlock