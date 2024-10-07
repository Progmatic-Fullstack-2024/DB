
CREATE TYPE gender AS ENUM (
'man',
'woman',
'other'
);

CREATE TABLE users(
	id SERIAL UNIQUE PRIMARY KEY,
	name text UNIQUE,
	szul_hely VARCHAR(50) NOT NULL,
	mezo1 CHAR(5),
	mezo2 BOOLEAN,
	mezo3 BOOLEAN[] NOT NULL,
	gender gender,
	best_friend INT REFERENCES users(id)
);

DROP TABLE users;


SELECT * FROM users;

INSERT INTO users (name, szul_hely, mezo3) VALUES 
('ANDRasdIsd','H',  '{true}');





