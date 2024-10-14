SELECT * FROM A;
SELECT * FROM B;

SELECT * FROM A INNER JOIN B ON A.fruits = B.fruits;
SELECT * FROM A LEFT JOIN B ON A.fruits = B.fruits;
SELECT * FROM A RIGHT JOIN B ON A.fruits = B.fruits;
SELECT * FROM A FULL JOIN B ON A.fruits = B.fruits;

SELECT * FROM A FULL JOIN B ON A.fruits = B.fruits
WHERE A.fruits IS NULL OR B.fruits IS NULL;

SELECT * FROM A CROSS JOIN B;
