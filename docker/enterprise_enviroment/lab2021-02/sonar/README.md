## correção na subida do sonar no windows

```bash
wsl -d docker-desktop
sysctl -w vm.max_map_count = 262144
```