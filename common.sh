#/bin/bash

ip=192.168.33.10
ssh-keygen -f ~/.ssh/known_hosts -R $ip

sudo apt-get -y --force-yes install  sshpass
# create vm and pull devstack
vagrant up

#ssh-copy-id stack@$ip

# use google dns server
sshpass -p 1234 ssh -o StrictHostKeyChecking=no -t stack@$ip "echo nameserver 8.8.8.8 | sudo tee /etc/resolv.conf"
