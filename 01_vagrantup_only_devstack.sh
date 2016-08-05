#/bin/bash
source ./common.sh

# create vm and pull devstack
vagrant up


# install & run devstack
sshpass -p 1234 ssh -o StrictHostKeyChecking=no -t stack@$ip "./devstack/stack.sh"
