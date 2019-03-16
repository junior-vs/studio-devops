#!/bin/bash

export PGUSER=postgres
export PGPASSWORD=p102030
psql -h localhost -U postgres <<- SHELL
  CREATE USER apl_user WITH PASSWORD 's102030';
  CREATE DATABASE "AdventureWorks";
  GRANT ALL PRIVILEGES ON DATABASE "AdventureWorks" TO apl_user;
SHELL

psql -h localhost -U postgres -d AdventureWorks < install.sql
