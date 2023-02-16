#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

  CREATE USER sonarapp;
  CREATE USER keycloakapp;
  CREATE USER appuser;

  CREATE DATABASE sonardb;
  CREATE DATABASE keycloakdb;

  ALTER USER sonarapp PASSWORD 'sonarapp';
  GRANT ALL PRIVILEGES ON DATABASE sonardb TO sonarapp;
  
  ALTER USER keycloakapp PASSWORD 'keycloakapp';  
  GRANT ALL PRIVILEGES ON DATABASE keycloakdb TO keycloakapp;
  
EOSQL