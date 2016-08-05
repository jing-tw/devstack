#/bin/bash

ip=192.168.33.10
ssh-keygen -f ~/.ssh/known_hosts -R $ip

# create vm and pull devstack
vagrant up

#ssh-copy-id stack@$ip
