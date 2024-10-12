CREATE TYPE gender AS ENUM ('boy', 'girl');
CREATE TYPE gift_status AS ENUM ('plan', 'working', 'ready');

CREATE TABLE gifts (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	isBroken BOOLEAN
);

CREATE TABLE elf(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	gender gender
);

CREATE TABLE gifts_elf(
	id SERIAL PRIMARY KEY,
	gifts_id INT REFERENCES gifts(id),
	elf_id INT REFERENCES elf(id),
	status gift_status
);

CREATE TABLE kids(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	gender gender,
	birth_date DATE,
	wish INT REFERENCES gifts(id),
	isGood BOOLEAN
);

INSERT INTO gifts (name, isBroken) VALUES
('Maci', false),
('Labda', false),
('Porcelán Baba', true);

INSERT INTO elf (name, gender) VALUES
('Miki', 'boy'),
('Muki', 'boy'),
('Mini', 'girl');

INSERT INTO gifts_elf (gifts_id, elf_id, status) VALUES
(1,1,'ready'),
'plan', 'working', 'ready'