CREATE TABLE Hallgatok (
  HallgatoID SERIAL PRIMARY KEY,
  Vezeteknev varchar(255),
  Keresztnev varchar(255),
  Szakirany int
);

CREATE TABLE Oktatok (
  OktatoID SERIAL PRIMARY KEY,
  Vezeteknev varchar(255),
  Keresztnev varchar(255)
);

CREATE TABLE Kurzusok (
  KurzusID SERIAL PRIMARY KEY,
  KurzusNev varchar(255),
  OktatoID int,
  Kredit int
);

CREATE TABLE Feladatok (
  FeladatID SERIAL PRIMARY KEY,
  KurzusID int,
  FeladatNev varchar(255),
  Hatarido date,
  MaxPontszam int
);

CREATE TABLE Ertekelesek (
  ErtekelesID SERIAL PRIMARY KEY,
  FeladatID int,
  HallgatoID int,
  Pontszam int
);

CREATE TABLE Beiratkozasok (
  BeiratkozasID SERIAL PRIMARY KEY,
  HallgatoID int,
  KurzusID int,
  BeiratkozasDatuma date
);

CREATE TABLE Elofeltetelek (
  KurzusID int,
  ElofeltetelKurzusID int
);

CREATE TABLE Tanszekek (
  TanszekID SERIAL PRIMARY KEY,
  TanszekNev varchar(255),
  VezetoID int
);

CREATE TABLE Klubok (
  KlubID SERIAL PRIMARY KEY,
  KlubNev varchar(255)
);

CREATE TABLE KlubTagsagok (
  TagsagID SERIAL PRIMARY KEY,
  HallgatoID int,
  KlubID int,
  CsatlakozasDatuma date
);

ALTER TABLE Hallgatok ADD FOREIGN KEY (Szakirany) REFERENCES Tanszekek (TanszekID);

ALTER TABLE Kurzusok ADD FOREIGN KEY (OktatoID) REFERENCES Oktatok (OktatoID);

ALTER TABLE Feladatok ADD FOREIGN KEY (KurzusID) REFERENCES Kurzusok (KurzusID);

ALTER TABLE Ertekelesek ADD FOREIGN KEY (FeladatID) REFERENCES Feladatok (FeladatID);

ALTER TABLE Ertekelesek ADD FOREIGN KEY (HallgatoID) REFERENCES Hallgatok (HallgatoID);

ALTER TABLE Beiratkozasok ADD FOREIGN KEY (HallgatoID) REFERENCES Hallgatok (HallgatoID);

ALTER TABLE Beiratkozasok ADD FOREIGN KEY (KurzusID) REFERENCES Kurzusok (KurzusID);

ALTER TABLE Elofeltetelek ADD FOREIGN KEY (KurzusID) REFERENCES Kurzusok (KurzusID);

ALTER TABLE Elofeltetelek ADD FOREIGN KEY (ElofeltetelKurzusID) REFERENCES Kurzusok (KurzusID);

ALTER TABLE Tanszekek ADD FOREIGN KEY (VezetoID) REFERENCES Oktatok (OktatoID);

ALTER TABLE KlubTagsagok ADD FOREIGN KEY (HallgatoID) REFERENCES Hallgatok (HallgatoID);

ALTER TABLE KlubTagsagok ADD FOREIGN KEY (KlubID) REFERENCES Klubok (KlubID);
