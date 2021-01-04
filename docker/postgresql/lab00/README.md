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

## Access to postgres:

- `localhost:5432`
- **Username:** postgres (as a default)
- **Password:** p102030 (as a default)

## Access to PgAdmin:

- **URL:** http://localhost:5050
- **Username:** pgadmin4@pgadmin.org
- **Password:** admin

## PSQL

psql -h localhost -p 5432 -U postgres

docker exec -it postgres_container /bin/bash
psql -h localhost -p 5432 -U postgres -c "CREATE DATABASE \"Adventureworks\";"
psql -h localhost -p 5432 -U postgres -d Adventureworks < install.sql

