# Ansible com vagrant

## Configuração

### Erro UNREACHABLE

1. mkdir ssh-keys
2. cd ssh-keys
3. `ssh-keygen -t rsa` 
3.1. Utilizar a pasta atual (/ssh_keys)
3.2. Utilizar vagrant_id_rsa
4. `ssh-copy-id -i vagrant_id_rsa.pub vagrant@172.17.177.40`
5. Obs: Talvez esteja necessário remover o arquivo ~/.ssh/known_hosts.

### Run

1. `vagrant up`
2. `ansible-playbook -i hosts provisioning.yml`
