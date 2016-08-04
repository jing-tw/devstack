#/bin/bash

# Environment
apt-get update
apt-get -y --force-yes install git
echo "stack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# stack user
username='test7'
sudo adduser $username --disabled-password --gecos "First Last,RoomNumber,WorkPhone,HomePhone"
echo "$username:1234" | sudo chpasswd

# clone stack
su stack -c "cd ~;git clone https://github.com/openstack-dev/devstack.git"
su stack -c "cp ~/devstack/samples/local.conf ~/devstack/local.conf"

