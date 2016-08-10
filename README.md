#devstack

## Automatically Deploy
```bash
[host]. ./02_vagrant_up_gnocchi.sh
```
## Manualy Deploy
``` bash
[host] vagrant up && vagrant ssh
[guest] sudo su stack  #passwd=1234
[guest] cd ~\devstack
```

## plug-in
### ceilometer
```bash
# in local.conf
enable_plugin gnocchi https://github.com/openstack/gnocchi master
enable_service gnocchi-api,gnocchi-metricd
enable_service gnocchi-grafana
```

[guest] . ./stack.sh
