# ansible-private-chain

## Setup
```bash
$ ansible-playbook -i ansible-playbook/ec2 ansible-playbook/ubuntu.yml
```


## Check
```bash
curl -X POST --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2

curl -X POST --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3", "latest"],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2
```

## TODO
- [ ] update inventory
- [ ] update addresses
- [ ] update nginx path

## Memo
public key: 0xf61CaF985B554e6370fDa9242e4E9808Cfe85de3
private key: 4868DAEB318EB5640B934987E3941D4FC6D58EA2467584397AB39A2442296AE5