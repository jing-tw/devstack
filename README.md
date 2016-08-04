#devstack

## deploy
``` bash
vagrant up && vagrant ssh
sudo su stack  #passwd=1234
```

## install plug-in
### ceilometer
```bash
# in local.conf
enable_plugin gnocchi https://github.com/openstack/gnocchi master
enable_service gnocchi-api,gnocchi-metricd
enable_service gnocchi-grafana
```
