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

-- 1. Hogy hívják az egyes ügyfeleket? Jelenítsd meg a nevüket ABC-sorrendben!
-- 2. Listázd ki a magyarországi ügyfeleket életkoruk szerint! Kezdd a legfiatalabbal!
-- 3. Add meg a Pest megyei ügyfeleket! (Irányítószámuk 2-vel kezdődik.)
-- 4. Mennyi pénzt fizettek be összesen az ügyfelek?
-- 5. Mekkora összegű egy átlagos befizetés?
-- 6. Mennyi volt az eddigi legkisebb illetve legnagyobb befizetett összeg?
-- 7. Hány darab befizetés szerepel a nyilvántartásban?
-- 8. Milyen összegeket, és mikor fizetett Török Bálint?
-- 9. Mennyit fizetett összesen Nagy Károly?
-- 10. Mennyit fizettek összesen a nem magyarországi befizetők?
-- 11. Mennyit fizettek az egyes ügyfelek?
-- 12. Mi az első három legtöbbet befizető ügyfél sorrendje?
-- 13. Mekkora összegű befizetések történtek az év egyes hónapjaiban? (Hint: van egy hónapot kinyerő függvény...)
-- 14. Melyek azok a napok, amikor több befizetés is történt?
-- 15. Mely befizetések régebbiek egy évnél? Használj beépített függvényeket, gugli a barátod!
-- 16. Mennyi pénzt fizettek be az elmúlt 365 napban? (DATE_SUB(Datum,INTERVAL 1 YEAR); vagy DATEDIFF(current_date, datum) < 365)
-- 17. Ki a legidősebb ügyfél?
-- 18. Ki, és mikor követte el a legkisebb összegű befizetést?
-- 19. Kinek a legkevesebb az összes befizetése?
-- 20. Van-e olyan ügyfél, aki még egyáltalán nem fizetett? Itt használd a NOT IN-t!
-- 21. Fejenként mennyit fizettek átlagosan az ügyfelek, ha az átlagba csak a fizető ügyfelek számítanak? Elvárt megoldás: 51777.7778
-- 22. Fejenként mennyit fizettek átlagosan az ügyfelek a nem fizető ügyfeleket is beszámítva? Elvárt megoldás: 42363.6364
-- 23. Kik azok az ügyfelek, akik az átlagosnál többet fizettek?