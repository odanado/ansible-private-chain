# ansible-private-chain

## Setup
```bash
$ ansible-playbook -i ansible-playbook/ec2 ansible-playbook/ubuntu.yml --extra-vars "@example.config.json"
```


## Check
```bash
curl -X POST --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2

curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3", "latest"],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2

curl -X POST --data '{"jsonrpc":"2.0","method":"eth_sendTransaction","params":[{"from": "0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3", "to": "0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3", "value": "0x9184e72a"}],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2

curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getTransactionReceipt","params":["0x0336457a731d33aea48de52836c11e5fb2b2bad2f0dc65f59b439e976fd4a843"],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2
```

## TODO
- [ ] update inventory
- [x] update addresses
- [x] update nginx path

## Memo
address: 0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3
private key: 4868DAEB318EB5640B934987E3941D4FC6D58EA2467584397AB39A2442296AE5