# Introduction 
Infra utilizando o docker compose como base

## Create docker network dev_network

```bash
docker network create dev_network
```

## Subir 

```bash
# basico
docker compose -f "docker-compose.yml" up -d --build 
# backend [rabbitmq, kafka]
docker compose -f "docker-compose.yml" --profile backend up -d --build 
# qa [sonar]
docker compose -f "docker-compose.yml" --profile qa up -d --build 
# monitoring [grafana, prometheus]
docker compose -f "docker-compose.yml" --profile monitoring up -d --build 
# nosql [mongo, redis]
docker compose -f "docker-compose.yml" --profile nosql up -d --build 
# nosql [keycloak]
docker compose -f "docker-compose.yml" --profile security up -d --build 
# mq [activemq artemis]
docker compose -f "docker-compose.yml" --profile mq up -d --build 
```



## Tecnologias

### Postgres
  #### Pgadmin
  - http://localhost:5050
  - user: admin@admin.org
  - senha: admin


### Mysql

### Kafka

### keycloak
- http://localhost:9080
- user: admin
- password: admin

### mongodb

### redis

### rabbitmq
- [web](http://localhost:15672/)
- user: admin 
- password: admin
