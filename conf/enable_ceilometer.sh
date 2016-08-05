#/bin/bash

file=./devstack/local.conf

cat <<EOF >> $file
enable_plugin ceilometer https://git.openstack.org/openstack/ceilometer
dd
EOF
