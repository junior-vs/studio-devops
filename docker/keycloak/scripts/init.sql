SET default_with_oids = false;

--CREATE USER app_user;
--ALTER USER app_user PASSWORD 'app_user';
CREATE DATABASE keycloak  OWNER postgres;
--GRANT ALL PRIVILEGES ON DATABASE cdc TO app_user;
SET  SCHEMA 'cdc';
