# SQL (Structural Query Language)

## Init a MySQL docker container

First to run a mysql container

```bash
docker run --name db-platzi -d -p 3309:3306 -v /db:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123 mysql:latest
```

After this, run the container in interactive mode, initializing a new bash

```bash
docker exec -it container_name /bin/bash
```

## Init MySQL

```bash
mysql -uroot -ppassword
```

## Show Databases

```bash
show databases;
```

## Use a database

```bash
use db_name;
```

## Show tables on DB

```bash
show tables;
```

## Which is the current selected db

```bash
select database();
```

## Create a database given an shema script and data

```bash
mysql -u root -p < schema.sql
```

```bash
mysql -u root -p -D db_name < all_data.sql
```

## Plantilla

```bash
```
