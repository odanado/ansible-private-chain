# ansible-private-chain

## Setup
ansible-playbook -i ansible-playbook/ec2 ansible-playbook/ubuntu.yml


## Check
curl -X POST --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}' -H "Content-Type: application/json" ${HOSTNAME}:8080/87b298c45ffd71385d0dda6a0a7cb43e151efbb2

## TODO
- [ ] update inventory
- [ ] update addresses
- [ ] update nginx path