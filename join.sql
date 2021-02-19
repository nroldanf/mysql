--  1. Se escoge una tabla pivote
-- 2. Se usa join para relacionar las tablas mediante un campo
SELECT b.book_id, a.name, a.author_id, b.title
FROM books as b
JOIN authors as a
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5;

SELECT b.book_id, a.name, a.author_id, b.title
FROM books as b
INNER JOIN authors as a
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5;

SELECT b.book_id, a.name, a.author_id, b.title
FROM books as b
LEFT JOIN authors as a
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5;

SELECT b.book_id, a.name, a.author_id, b.title
FROM books as b
RIGHT JOIN authors as a
    ON a.author_id = b.author_id
WHERE (a.author_id between 1 and 5);


SELECT c.name, b.title, a.name, t.type
FROM transactions as t
JOIN books as b
    on t.book_id = b.book_id
JOIN clients as c
    on t.client_id = c.client_id
JOIN authors as a
    on b.author_id = a.author_id
WHERE c.gender = 'M'
    and t.type IN ('sell','lend');

-- Las siguientes 2 sentencias funcionan igual
SELECT b.title, a.name
FROM authors as a, books as b
WHERE a.author_id = b.author_id
LIMIT 10;

SELECT b.title, a.name
FROM books as b
INNER JOIN authors as a
    ON a.author_id = b.author_id
LIMIT 10;
--
SELECT a.author_id, a.name, a.nationality, b.title
FROM authors as a
JOIN books as b
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5
ORDER BY a.name desc;
-- Left join permite saber los
SELECT a.author_id, a.name, a.nationality, b.title
FROM authors as a
LEFT JOIN books as b
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5
ORDER BY a.author_id asc;
-- Cuantos libros tiene cada autor?
SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors as a
LEFT JOIN books as b
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5
GROUP BY a.author_id
ORDER BY a.author_id asc;

SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors as a
JOIN books as b
    ON a.author_id = b.author_id
WHERE a.author_id between 1 and 5
GROUP BY a.author_id
ORDER BY a.author_id asc;