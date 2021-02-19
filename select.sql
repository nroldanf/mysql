-- SELECT crea tablas dinámicas, es una forma de diseñar tablas
-- de los datos que quiero
SELECT FROM * table_name WHERE column_name = algo;
SELECT FROM * table_name WHERE column_name = algo\G

SELECT birthday from clients;

SELECT name,YEAR(NOW()) - YEAR(birthdate)
    FROM clients LIMIT 10;

SELECT name, email, YEAR(NOW()) - YEAR(birthdate) as edad
    FROM clients
    WHERE gender = 'F'
        AND name LIKE '%Lop%';

SELECT count(*) from authors;
SELECT count(*) from books;