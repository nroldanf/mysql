INSERT INTO authors(name, nationality)
    VALUES('Juan Rulfo', 'MEX');

INSERT INTO authors(name, nationality)
    VALUES('Gabriel García Márquez', 'COL');

INSERT INTO authors(name,nationality)
    VALUES('Juan Gabriel Vasquez', 'COL');

INSERT INTO authors(name,nationality)
    VALUES('Julio Cortázar','ARG'),
        ('Isabel Allende','CHI'),
        ('Octavio Paz', 'MEX'),
        ('Juan Carlos Onetti', 'URU');

INSERT INTO authors(author_id,name)
    VALUES('16','Pablo Neruda');


INSERT INTO clients(client_id, name, email, birthdate, gender, active) VALUES
    (1,'Maria Dolores Gomez','MariaDolores.9598@random.names','1971-06-06','F',1),
    (2,'Adrian Fernandez','adrian.55334@random.names','1970-04-09','M',1),
    (3,'Maria Luisa Marin','marialuisa.32432@random.names','1957-07-30','F',1),
    (4,'Pedro Sanchez','pedro.90879@random.names','1992-01-31','M',1);

INSERT INTO clients(name, email, birthdate, gender, active) VALUES
    ('Pedro Sanchez','pedro.90879@random.names','1992-01-31','M',1);

INSERT INTO clients(name, email, birthdate, gender, active) VALUES
    ('Pedro Sanchez','pedro.90879@random.names','1992-01-31','M',0)
    ON DUPLICATE KEY UPDATE active = VALUES(active);

INSERT INTO books(title, author_id) VALUES
    ('El laberinto de la soledad', 6);

INSERT INTO books(title,author_id,`year`) VALUES
    ('Vuelta al Laberinto de la Soledad', (SELECT author_id FROM authors WHERE name = 'Octavio Paz' LIMIT 1),1960);