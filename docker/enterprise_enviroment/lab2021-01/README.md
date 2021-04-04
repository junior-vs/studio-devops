# Postgresql & PgAdmin powered by compose

## Requirements:

- docker >= 17.12.0+
- docker-compose

## Quick Start

- Clone or download this repository
- Go inside of directory, `cd compose-postgres`
- Run this command `docker-compose up -d`
- `docker-compose -f docker-compose.yml up -d --build`
- `docker-compose -f "docker-compose.yml" down`

## Environments

This Compose file contains the following environment variables:

- `POSTGRES_USER` the default value is **postgres**
- `POSTGRES_PASSWORD` the default value is **p102030**
- `PGADMIN_PORT` the default value is **5050**
- `PGADMIN_DEFAULT_EMAIL` the default value is **pgadmin4@pgadmin.org**
- `PGADMIN_DEFAULT_PASSWORD` the default value is **admin**

## Access to postgres

- `localhost:5432`
- **Username:** postgres (as a default)
- **Password:** p102030 (as a default)

## Access to PgAdmin

- **URL:** http://localhost:5050
- **Username:** pgadmin4@pgadmin.org
- **Password:** admin

## PSQL

psql -h localhost -p 5432 -U postgres

```bash
docker exec -it postgres /bin/bash
psql -h localhost -p 5432 -U postgres -c "CREATE DATABASE \"Adventureworks\";"
cd \schemas\schema-adventureworks
psql -h localhost -p 5432 -U postgres -d Adventureworks < install.sql
```

```bash
docker exec -it postgres /bin/bash
cd \schemas\northwind_psql-master
psql -h localhost -p 5432 -U postgres -c "CREATE DATABASE \"northwind\";"
psql -h localhost -p 5432 -U postgres -d northwind < schemas\northwind_psql-master\northwind.sql
```

# Importante

## correção na subida do sonar no windows

```bash
wsl -d docker-desktop
sysctl -w vm.max_map_count=262144
```
