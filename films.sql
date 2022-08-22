CREATE TABLE films (
	id INTEGER,
  name TEXT,
  release_year INTEGER
  );
  
INSERT INTO films (id, name, release_year)VALUES 
(1, 'Braveheart', 1995),
(2, 'Inception', 2010),
(3, 'The Matrix', 1999),
(4, 'The Lord of the Rings: The Fellowship of the Ring', 2001),
(5, 'The Dark Knight', 2008),
(6, 'The Shawshank Redemption', 1994),
(7, 'Schindler''s List', 1993),
(8, 'Forest Gump', 1994),
(9, 'Se7en', 1995),
(10, 'Spirited Away', 2001);
  
SELECT *
FROM films
WHERE release_year = 1995;
  
SELECT name
FROM films
WHERE name LIKE 'The%';
  
ALTER TABLE films
ADD COLUMN runtime TEXT;
  
ALTER TABLE films
ADD COLUMN category TEXT;
  
ALTER TABLE films
ADD COLUMN rating REAL;
  
ALTER TABLE films
ADD COLUMN box_office_earnings BIGINT;

UPDATE films
SET runtime = '2h 58m', category = 'biography', rating = 8.4, box_office_earnings = 213216216
WHERE id = 1;

UPDATE films
SET runtime = '2h 28m', category = 'adventure', rating = 8.8, box_office_earnings = 836848102
WHERE id = 2;

UPDATE films
SET runtime = '2h 58m', category = 'action', rating = 8.7, box_office_earnings = 467222728
WHERE id = 3;

UPDATE films
SET runtime = '2h 58m', category = 'adventure', rating = 8.8, box_office_earnings = 898094742
WHERE id = 4;

UPDATE films
SET runtime = '2h 32m', category = 'crime', rating = 9.0, box_office_earnings = 1006102277
WHERE id = 5;

UPDATE films
SET runtime = '2h 22m', category = 'drama', rating = 9.3, box_office_earnings = 28884504
WHERE id = 6;

UPDATE films
SET runtime = '3h 15m', category = 'biography', rating = 9.0, box_office_earnings = 322161245
WHERE id = 7;

UPDATE films
SET runtime = '2h 22m', category = 'romance', rating = 8.8, box_office_earnings = 678226465
WHERE id = 8;

UPDATE films
SET runtime = '2h 07m', category = 'mystery', rating = 8.6, box_office_earnings = 327333559
WHERE id = 9;

UPDATE films
SET runtime = '2h 05m', category = 'animation', rating = 8.6, box_office_earnings = 355725195
WHERE id = 10;

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);

ALTER TABLE films
ADD CONSTRAINT unique_release UNIQUE (release_year);