DELETE FROM pizza WHERE pnev = 'Hawaii';
DELETE FROM tetel WHERE pazon = (SELECT pazon FROM pizza WHERE pnev = 'Hawaii');

ALTER TABLE spice_delivery DROP CONSTRAINT spice_delivery_delivery_id_fkey;
ALTER TABLE spice_delivery ADD CONSTRAINT spice_delivery_delivery_id_fkey FOREIGN KEY (delivery_id) REFERENCES delivery(id) ON DELETE CASCADE;


CREATE TABLE IF NOT EXISTS spice_delivery (
	delivery_id INT REFERENCES delivery(id),
	spice_id INT,
	db INT,
	PRIMARY KEY (delivery_id, spice_id),
	FOREIGN KEY spice_id REFERENCES spice(id) ON DELETE CASCADE
);