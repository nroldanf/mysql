# CREATE

## Types of tables

There are 2 principal types:

- InnoDB
    - Más lenta
    - Más recuperable en caso de falla
    - Menor consumo de memoria
    - Concurrencia
- MyISAM
    - Velocidad de lectura y escritura mayor
    - Sencilla
    - Operaciones 1 a 1

## CREATE a table or database

```sql
CREATE database db_name
```

```sql
CREATE DATABASE IF NOT EXISTS db_name
```

```sql
SHOW warnings;
```

Existen diferentes tipos de INTEGER.
Una columna puede tener una referencia hacia otras tablas. Puede ser a partir de ID's o queries sencillos.
Existen diferentes tipos de texto, uno de los más rapidos en VARCHAR()

## DROP a table

Borra la tabla para siempre, tanto contenido como estructura .

## DESCRIBE a table

Describe.

## SHOW

```sql
SHOW full columns FROM table_name
```
