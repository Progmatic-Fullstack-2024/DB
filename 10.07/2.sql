DROP TABLE users;

CREATE TABLE users(
	id SERIAL  PRIMARY KEY,
	name text UNIQUE,
);

CREATE TABLE dog (
	id SERIAL PRIMARY KEY,
	name text UNIQUE,
	color VARCHAR(20),
	owner INT UNIQUE REFERENCES users(id)
);

CREATE TABLE car(
	id SERIAL PRIMARY KEY,
	color text DEFAULT 'white'
);

CREATE TABLE IF NOT EXISTS car_users (
	car_id INT REFERENCES car(id),
	users_id INT REFERENCES users(id),
	PRIMARY KEY (car_id, users_id)
);

ALTER TABLE car ADD COLUMN mezo text;
ALTER TABLE car ALTER COLUMN mezo 
SET DEFAULT 'mezo';
ALTER TABLE car DROP COLUMN mezo text;
ALTER TABLE car RENAME TO cars;
CREATE INDEX indexx_name ON cars(mezo);
DROP INDEX indexx_name;

UPDATE car





SELECT * FROM users;
ALTER TABLE users ADD birth_date DATE;
