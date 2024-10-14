CREATE TYPE spice_type AS ENUM ('szarított', 'élő', 'friss');

CREATE TABLE IF NOT EXISTS spice (
	id SERIAL PRIMARY KEY,
	name text,
	type spice_type
);

CREATE TABLE IF NOT EXISTS stock (
	spice_id INT UNIQUE REFERENCES spice(id) ON UPDATE CASCADE ON DELETE CASCADE,
	on_stock INT,
	PRIMARY KEY (spice_id)
);

CREATE TABLE IF NOT EXISTS delivery (
	id SERIAL PRIMARY KEY,
	completed BOOLEAN,
	expected_delivery DATE
);

CREATE TABLE IF NOT EXISTS spice_delivery (
	delivery_id INT REFERENCES delivery(id) ON UPDATE CASCADE ON DELETE CASCADE,
	spice_id INT REFERENCES spice(id) ON UPDATE CASCADE ON DELETE CASCADE,
	db INT,
	PRIMARY KEY (delivery_id, spice_id)
);

-- Fűszerek hozzáadása
INSERT INTO spice (name, type) VALUES 
('Bazsalikom', 'friss'),
('Oregánó', 'szarított'),
('Petrezselyem', 'friss'),
('Kömény', 'szarított'),
('Cayenne bors', 'szarított'),
('Chili', 'élő'),
('Rozmaring', 'friss');

-- Készlet hozzáadása
INSERT INTO stock (spice_id, on_stock) VALUES 
(1, 100),
(2, 50),
(3, 80),
(4, 30),
(5, 20),
(6, 10),
(7, 60);

-- Szállítmányok hozzáadása
INSERT INTO delivery (completed, expected_delivery) VALUES 
(TRUE, '2024-10-01'),
(FALSE, '2024-10-15'),
(TRUE, '2024-09-20'),
(FALSE, '2024-11-05');

-- Fűszer szállítmányok hozzáadása
INSERT INTO spice_delivery (delivery_id, spice_id, db) VALUES 
(1, 1, 50),
(1, 2, 30),
(2, 3, 20),
(2, 4, 15),
(3, 5, 25),
(3, 6, 10),
(4, 7, 40);
