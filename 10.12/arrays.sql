SELECT * FROM arrays;

SELECT * FROM arrays WHERE 'orange' = ANY(fruits);

SELECT * FROM arrays 
WHERE '{"mango", "pineapple"}' <@ fruits;

SELECT * FROM arrays 
WHERE fruits @> '{"mango", "pineapple"}';

SELECT * FROM arrays
WHERE fruits && '{"mango", "pineapple", "orange", "plum"}';

UPDATE arrays
SET fruits = array_append(fruits, 'orange')
WHERE id = 2;

UPDATE arrays
SET fruits = fruits || '{"kiwi", "blueberry"}'
WHERE id = 5;

UPDATE arrays
SET fruits = array_remove(fruits, 'kiwi')
WHERE id = 5;

SELECT fruits[1] FROM arrays;

CREATE TABLE jegyek(
	jegy INT
);

INSERT INTO jegyek VALUES
(1),
(1),
(2),
(3),
(1),
(5);

SELECT * FROM jegyek;
SELECT jegy FROM jegyek;
SELECT 
CASE
	WHEN jegy = 1 THEN 'elégtelen'
	WHEN jegy = 2 THEN 'elégséges'
	WHEN jegy = 3 THEN 'közepes'
	WHEN jegy = 4 THEN 'jó'
	WHEN jegy = 5 THEN 'jeles'
END
AS jegyek
FROM jegyek;

