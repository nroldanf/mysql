# PROBLEMAS DE NEGOCIO

## Qué nacionalidades hay

```sql
SELECT nationality
FROM authors
GROUP BY nationality
ORDER BY nationality;
```

o

```sql
SELECT DISTINCT nationality
FROM authors
ORDER BY nationality;
```

## Cuantos escritores hay de cada nacionalidad? Excluyendo paises y null

```sql
SELECT nationality, COUNT(author_id) as num_authors
FROM authors
WHERE nationality IS NOT NULL and nationality NOT IN ('RUS','AUS')
GROUP BY nationality
ORDER BY COUNT(author_id) desc;
```

## Cuantos libros hay de cada nacionalidad?

```sql
SELECT a.nationality, COUNT(b.book_id) as num_books
FROM authors as a
JOIN books as b
    ON a.author_id = b.author_id
GROUP BY a.nationality
ORDER BY num_books desc, nationality asc;
```

## Cuál es el promedio, std del precio de los libros? Item por nacionalidad

```sql
SELECT nationality, AVG(price) as prom, STDDEV(price) as std
FROM books as b
JOIN authors as a
    ON a.author_id = b.author_id
GROUP BY nationality;
```

## Cuál es el precio máximo/mínimo de un libro?

```sql
SELECT nationality, MAX(price) as max_price, MIN(price) as min_price
FROM books as b
JOIN authors as a
    ON a.author_id = b.author_id
GROUP BY nationality;
```

## Cómo quedaría el reporte de préstamos? (quien, qué libro cuando?)

```sql
SELECT `type`, COUNT(`type`)
FROM transactions
GROUP BY type
```

```sql
SELECT c.name, b.title, CONCAT(a.name, " (", a.nationality, ")") as autor, t.modified_at as prestado_el
FROM transactions as t
JOIN clients as c
    ON c.client_id = t.client_id
JOIN books as b
    ON b.book_id = t.book_id
JOIN authors as a
    ON a.author_id = b.author_id
WHERE t.type = 'lend';
```

```sql
SELECT c.name, b.title, t.modified_at
FROM transactions as t
LEFT JOIN clients as c
    ON c.client_id = t.client_id
LEFT JOIN books as b
    ON b.book_id = t.book_id
WHERE t.type = 'lend';
```
