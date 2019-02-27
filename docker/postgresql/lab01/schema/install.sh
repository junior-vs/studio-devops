#!/bin/bash

export PGUSER=postgres
psql -h localhost -U postgres <<- SHELL
  CREATE USER docker;
  CREATE DATABASE "AdventureWorks";
  GRANT ALL PRIVILEGES ON DATABASE "AdventureWorks" TO docker;
SHELL

psql -h localhost -U postgres -d AdventureWorks < install.sql
