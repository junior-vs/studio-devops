# Msyql

psql -h localhost -p 5432 -U postgres

```bash
docker exec -it mysqldb /bin/bash
```

```sql
mysql --user=root --password employees < employees_partitioned.sql
```

```sql
mysql --user=root --password classicmodels < mysqlsampledatabase.sql
```
mysql --local-infile=1 -u root --password