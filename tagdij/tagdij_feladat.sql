/*
Ugyfel Befiz
------ -----
Azon Azon
Nev Datum
SzulEv Osszeg
IrSzam
Orsz
ahol
Azon N 10 az ügyfél azonosítója
(Azon oszlopok alakítják ki a táblák közötti egy a többhöz kapcsolatot)
Nev C 30 az ügyfél neve
SzulEv N 4 az ügyfél születési évszáma
IrSzam N 4 az ügyfél lakhelyének irányítószáma
Orsz C 3 az ügyfél országának kódja
Datum DT a befizetés dátuma
Oszzeg N 10 a befizetés összege
*/
SELECT * FROM ugyfel;
SELECT * FROM befiz;
SELECT * FROM ugyfel JOIN befiz ON ugyfel.azon = befiz.azon;
-- 1. Hogy hívják az egyes ügyfeleket? Jelenítsd meg a nevüket ABC-sorrendben!
SELECT nev FROM ugyfel ORDER BY nev;
-- 2. Listázd ki a magyarországi ügyfeleket életkoruk szerint! Kezdd a legfiatalabbal!
SELECT nev, szulev FROM ugyfel WHERE orsz = 'H' ORDER BY szulev DESC;
-- 3. Add meg a Pest megyei ügyfeleket! (Irányítószámuk 2-vel kezdődik.)
SELECT nev, irszam FROM ugyfel WHERE irszam BETWEEN 2000 AND 2999;
-- 4. Mennyi pénzt fizettek be összesen az ügyfelek?
SELECT SUM(osszeg) FROM befiz;
-- 5. Mekkora összegű egy átlagos befizetés?
SELECT AVG(osszeg) FROM befiz;
-- 6. Mennyi volt az eddigi legkisebb illetve legnagyobb befizetett összeg?
SELECT MIN(osszeg), MAX(osszeg) FROM befiz;
-- 7. Hány darab befizetés szerepel a nyilvántartásban?
SELECT COUNT(*) FROM befiz;
-- 8. Milyen összegeket, és mikor fizetett Török Bálint?
SELECT *
FROM befiz JOIN ugyfel ON befiz.azon = ugyfel.azon
WHERE ugyfel.nev LIKE 'Török Bálint';
-- 9. Mennyit fizetett összesen Nagy Károly?
SELECT SUM(befiz.osszeg) AS összesen_Nagy_Károly
FROM befiz JOIN ugyfel ON befiz.azon = ugyfel.azon
WHERE ugyfel.nev LIKE 'Nagy Károly';
-- 10. Mennyit fizettek összesen a nem magyarországi befizetők?
SELECT SUM(befiz.osszeg) FROM ugyfel JOIN befiz ON ugyfel.azon = befiz.azon
WHERE ugyfel.orsz NOT LIKE 'H  ';
-- 11. Mennyit fizettek az egyes ügyfelek?
SELECT nev, COALESCE(SUM(befiz.osszeg), 0) AS ossz
FROM befiz RIGHT JOIN ugyfel ON befiz.azon = ugyfel.azon
GROUP BY ugyfel.nev;
-- 12. Mi az első három legtöbbet befizető ügyfél sorrendje?
SELECT nev, COALESCE(SUM(befiz.osszeg), 0) AS ossz
FROM befiz RIGHT JOIN ugyfel ON befiz.azon = ugyfel.azon
GROUP BY ugyfel.nev
ORDER BY ossz DESC
LIMIT 3;
-- 13. Mekkora összegű befizetések történtek az év egyes hónapjaiban? (Hint: van egy hónapot kinyerő függvény...)
SELECT *, EXTRACT(MONTH FROM datum::timestamp) FROM befiz;
SELECT *, EXTRACT(YEAR FROM datum::timestamp) FROM befiz;
SELECT 
SUM(befiz.osszeg),
COUNT(*),
EXTRACT(MONTH FROM datum::timestamp) AS month_befiz,
EXTRACT(YEAR FROM datum::timestamp) AS year_befiz
FROM befiz
GROUP BY month_befiz, year_befiz
ORDER BY month_befiz, year_befiz;

-- 14. Melyek azok a napok, amikor több befizetés is történt?
SELECT *, datum::timestamp::date FROM befiz;
SELECT datum::timestamp::date AS date
FROM befiz
GROUP BY date
HAVING COUNT(*) > 1;
-- 15. Mely befizetések régebbiek egy évnél? Használj beépített függvényeket, gugli a barátod!
SELECT datum, DATE_PART('year', NOW()::date) - DATE_PART('year', datum::date) AS old_in_year
FROM befiz
WHERE old_in_year > 1;
-- 16. Mennyi pénzt fizettek be az elmúlt 365 napban? (DATE_SUB(Datum,INTERVAL 1 YEAR); vagy DATEDIFF(current_date, datum) < 365)
SELECT SUM(osszeg)
FROM befiz
WHERE NOW()::date - datum::date < 365;
-- 17. Ki a legidősebb ügyfél?
SELECT nev, szulev FROM ugyfel ORDER BY szulev LIMIT 1;
-- 18. Ki, és mikor követte el a legkisebb összegű befizetést?
-- 19. Kinek a legkevesebb az összes befizetése?
-- 20. Van-e olyan ügyfél, aki még egyáltalán nem fizetett? Itt használd a NOT IN-t!
-- 21. Fejenként mennyit fizettek átlagosan az ügyfelek, ha az átlagba csak a fizető ügyfelek számítanak? Elvárt megoldás: 51777.7778
-- 22. Fejenként mennyit fizettek átlagosan az ügyfelek a nem fizető ügyfeleket is beszámítva? Elvárt megoldás: 42363.6364
-- 23. Kik azok az ügyfelek, akik az átlagosnál többet fizettek?