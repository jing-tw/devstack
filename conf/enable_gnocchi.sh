#/bin/bash

file=./devstack/local.conf

cat <<EOF >> $file
enable_plugin gnocchi https://github.com/openstack/gnocchi master
enable_service gnocchi-api,gnocchi-metricd
enable_service gnocchi-grafana
EOF
