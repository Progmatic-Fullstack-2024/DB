INSERT INTO Oktatok (Vezeteknev, Keresztnev)
VALUES 
('Farkas', 'Zoltán'),
('Horváth', 'Erzsébet'),
('Kovács', 'Dénes'),
('Bíró', 'Sándor'),
('Lakatos', 'Júlia'),
('Molnár', 'András'),
('Szabó', 'Éva'),
('Török', 'Béla'),
('Hegedűs', 'Kata'),
('Vajda', 'Gergő'),
('Tóth', 'Sára'),
('Németh', 'Dániel'),
('Oláh', 'Róbert'),
('Kiss', 'Erika'),
('Boros', 'Imre'),
('Varga', 'Miklós'),
('Szilágyi', 'Zsófia'),
('Pataki', 'Ádám'),
('Fülöp', 'Gergely'),
('Barna', 'Judit');

INSERT INTO Tanszekek (TanszekNev, VezetoID)
VALUES 
('Informatika', 1),
('Biológia', 2),
('Matematika', 3),
('Kémia', 4),
('Fizika', 5),
('Elektronika', NULL),
('Műszaki Tudományok', 6),
('Gazdaságtudományok', 7),
('Filozófia', 8),
('Pszichológia', 9),
('Történelem', 10),
('Földrajz', 11),
('Szociológia', 12),
('Irodalom', 13),
('Nyelvészet', 14),
('Zenetudomány', 15),
('Antropológia', 16),
('Művészettörténet', 17),
('Jogtudomány', 18),
('Közgazdaságtan', 19);

INSERT INTO Hallgatok (Vezeteknev, Keresztnev, Szakirany)
VALUES 
('Kiss', 'Péter', 1),
('Nagy', 'János', 2),
('Tóth', 'Anna', 3),
('Szabó', 'László', 4),
('Varga', 'Gábor', 5),
('Oláh', 'Erika', 3),
('Kovács', 'István', 2),
('Hegedűs', 'Lilla', 1),
('Kovács', 'Balázs', 2),
('Szilágyi', 'Gergely', 4),
('Németh', 'Eszter', 5),
('Papp', 'Gábor', 3),
('Barna', 'Lajos', 1),
('Fekete', 'Katalin', 4),
('Veres', 'Ákos', 3),
('Pataki', 'Zoltán', 2),
('Juhász', 'Noémi', 1),
('Takács', 'Tamás', 5),
('Mészáros', 'Bence', 4),
('Molnár', 'Lilla', 2);

INSERT INTO Kurzusok (KurzusNev, OktatoID, Kredit)
VALUES 
('Bevezetés az Informatikába', 1, 3),
('Fejlődésbiológia', 2, 4),
('Algebra I.', 3, 5),
('Szerves kémia alapjai', 4, 3),
('Kvantummechanika', 5, 6),
('Elektronika labor', 2, 4),
('Digitális Rendszerek', 6, 4),
('Gazdasági alapok', 7, 3),
('Történelmi áttekintés', 10, 3),
('Nyelvtudomány alapjai', 14, 3),
('Zenetudomány alapismeretek', 16, 2),
('Jog alapjai', 19, 5),
('Földrajzi világképek', 12, 4),
('Szociológia alapjai', 13, 3),
('Művészettörténet áttekintése', 17, 4),
('Antropológiai kérdések', 16, 3),
('Pszichológia bevezetés', 9, 3),
('Filozófiai gondolkodás', 8, 4),
('Irodalmi elemzések', 14, 3),
('Közgazdasági modellek', 20, 5);

INSERT INTO Feladatok (KurzusID, FeladatNev, Hatarido, MaxPontszam)
VALUES 
(1, 'Programozási alapok', '2023-11-01', 100),
(2, 'Laborfeladat 1.', '2023-11-10', 50),
(3, 'Matriz elmélet', '2023-11-15', 100),
(4, 'Molekuláris szerkezetek', '2024-11-20', 75),
(5, 'Kvantumelmélet vizsgálat', '2024-12-01', 100),
(6, 'Áramkör tervezés', '2024-11-01', 50),
(7, 'Digitális rendszerek elemzése', '2024-12-05', 100),
(8, 'Gazdasági modellezés', '2024-12-10', 80),
(9, 'Történelmi elemzés', '2024-11-12', 90),
(10, 'Nyelvészeti elemzés', '2024-11-25', 75),
(11, 'Zenetudományi dolgozat', '2024-11-20', 60),
(12, 'Jogeset elemzés', '2024-12-05', 100),
(13, 'Földrajzi projektek', '2024-11-10', 80),
(14, 'Szociológiai tanulmány', '2024-12-15', 100),
(15, 'Művészeti elemzés', '2024-12-20', 75),
(16, 'Antropológiai vizsgálat', '2024-11-30', 90),
(17, 'Pszichológiai kérdések', '2024-11-25', 70),
(18, 'Filozófiai dolgozat', '2024-12-10', 100),
(1, 'HTML CSS', '2024-12-15', 80),
(2, 'Áramkörök', '2024-12-18', 90);

INSERT INTO Beiratkozasok (HallgatoID, KurzusID, BeiratkozasDatuma)
VALUES 
(1, 1, '2022-09-01'),
(2, 2, '2022-09-01'),
(3, 3, '2022-09-01'),
(4, 4, '2022-09-01'),
(5, 5, '2022-09-01'),
(6, 6, '2022-09-01'),
(7, 7, '2023-09-01'),
(8, 8, '2023-09-01'),
(9, 9, '2023-09-01'),
(10, 10, '2023-09-01'),
(11, 11, '2023-09-01'),
(12, 12, '2023-09-01'),
(13, 13, '2023-09-01'),
(14, 14, '2023-09-01'),
(15, 15, '2023-09-01'),
(16, 16, '2023-09-01'),
(17, 17, '2023-09-01'),
(1, 10, '2022-09-01'),
(2, 10, '2022-09-01'),
(3, 10, '2022-09-01'),
(4, 10, '2022-09-01'),
(5, 10, '2022-09-01'),
(6, 10, '2022-09-01'),
(1, 11, '2023-09-01'),
(1, 12, '2023-09-01'),
(2, 11, '2023-09-01');


INSERT INTO Ertekelesek (FeladatID, HallgatoID, Pontszam)
VALUES 
(1, 1, 85),
(2, 2, 45),
(3, 3, 90),
(4, 4, 60),
(5, 5, 100),
(6, 6, 70),
(7, 7, 85),
(8, 8, 60),
(9, 9, 75),
(10, 10, 80),
(11, 11, 65),
(12, 12, 90),
(13, 13, 55),
(14, 14, 80),
(15, 15, 95),
(16, 16, 70),
(17, 17, 65),
(18, 18, 85),
(19, 19, 75),
(20, 1, 90);


INSERT INTO Elofeltetelek (KurzusID, ElofeltetelKurzusID)
VALUES 
(3, 1), -- Algebra I. előfeltétele a Bevezetés az Informatikába kurzus
(5, 4), -- Kvantummechanika előfeltétele a Szerves kémia alapjai kurzus
(7, 6), -- Digitális Rendszerek előfeltétele az Elektronika labor kurzus
(8, 7), -- Gazdasági alapok előfeltétele a Digitális Rendszerek kurzus
(9, 8), -- Történelmi áttekintés előfeltétele a Gazdasági alapok kurzus
(10, 9), -- Nyelvtudomány alapjai előfeltétele a Történelmi áttekintés kurzus
(11, 10), -- Zenetudomány alapismeretek előfeltétele a Nyelvtudomány alapjai kurzus
(12, 11), -- Jog alapjai előfeltétele a Zenetudomány alapismeretek kurzus
(13, 12), -- Földrajzi világképek előfeltétele a Jog alapjai kurzus
(14, 13), -- Szociológia alapjai előfeltétele a Földrajzi világképek kurzus
(15, 14), -- Művészettörténet előfeltétele a Szociológia alapjai kurzus
(16, 15), -- Antropológiai kérdések előfeltétele a Művészettörténet áttekintése
(17, 16), -- Pszichológia bevezetés előfeltétele az Antropológiai kérdések kurzus
(18, 17), -- Filozófiai gondolkodás előfeltétele a Pszichológia bevezetés kurzus
(3, 18), -- Irodalmi elemzések előfeltétele a Filozófiai gondolkodás kurzus
(3, 19); -- Közgazdasági modellek előfeltétele az Irodalmi elemzések kurzus

INSERT INTO Klubok (KlubID, KlubNev)
VALUES 
(1, 'Programozók Klubja'),
(2, 'Természettudományos Klub'),
(3, 'Matematikai Társaság'),
(4, 'Vegyész Klub'),
(5, 'Fizikus Klub'),
(6, 'Irodalmi Kör'),
(7, 'Színházbarátok Klubja'),
(8, 'Fotós Klub'),
(9, 'Képzőművészeti Kör'),
(10, 'Zenei Társaság'),
(11, 'Sportklub'),
(12, 'Kutatók Klubja'),
(13, 'Filozófiai Társaság'),
(14, 'Közgazdasági Kör'),
(15, 'Nyelvészek Klubja'),
(16, 'Jogász Klub'),
(17, 'Biotechnológiai Társaság'),
(18, 'Környezetvédők Klubja'),
(19, 'Történelmi Klub'),
(20, 'Filmklub');

INSERT INTO KlubTagsagok (HallgatoID, KlubID, CsatlakozasDatuma)
VALUES 
(1, 1, '2022-10-01'),
(2, 2, '2022-10-01'),
(3, 3, '2022-10-01'),
(4, 4, '2022-10-01'),
(5, 5, '2022-10-01'),
(6, 6, '2022-10-01'),
(7, 7, '2022-10-01'),
(8, 8, '2022-10-01'),
(9, 9, '2022-10-01'),
(10, 1, '2022-10-01'),
(11, 2, '2022-10-01'),
(12, 3, '2022-10-01'),
(13, 1, '2022-10-01'),
(14, 2, '2022-10-01'),
(15, 3, '2022-10-01'),
(16, 1, '2022-10-01'),
(1, 2, '2023-10-01'),
(2, 3, '2023-10-01'),
(3, 1, '2024-10-01'),
(1, 2, '2024-10-01');