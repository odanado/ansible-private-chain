curl -X POST --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}' 13.231.191.233:8501 -H "Content-Type: application/json"

ansible-playbook -i ansible-playbook/local ansible-playbook/ubuntu.yml

systemctl status geth.service
