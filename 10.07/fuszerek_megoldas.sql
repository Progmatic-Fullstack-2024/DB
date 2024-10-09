CREATE TYPE spice_type AS ENUM ('szarított', 'élő', 'friss');

CREATE TABLE IF NOT EXISTS spice (
	id SERIAL PRIMARY KEY,
	name text,
	type spice_type
);

CREATE TABLE IF NOT EXISTS stock (
	spice_id INT REFERENCES spice(id),
	on_stock INT,
	PRIMARY KEY (spice_id)
);

CREATE TABLE IF NOT EXISTS delivery (
	id SERIAL PRIMARY KEY,
	completed BOOLEAN,
	expected_delivery DATE
);

CREATE TABLE IF NOT EXISTS spice_delivery (
	delivery_id INT REFERENCES delivery(id),
	spice_id INT REFERENCES spice(id),
	db INT,
	PRIMARY KEY (delivery_id, spice_id)
);