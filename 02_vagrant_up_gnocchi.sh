#/bin/bash
source ./common.sh

# enable gnocchi
sshpass -p 1234 ssh -o StrictHostKeyChecking=no -t stack@$ip "$(< conf/enable_gnocchi.sh)"

# install & run devstack
sshpass -p 1234 ssh -o StrictHostKeyChecking=no -t stack@$ip "./devstack/stack.sh"
