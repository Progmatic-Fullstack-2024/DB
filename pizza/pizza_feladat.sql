/*
Pizza: Pazon  Pnev Par
Futar: Fazon Fnev Ftel
Vevo: Vazon Vnev Vcim
Rendeles: Razon Vazon Fazon Idopont
Tetel: Razon Pazon Db

ahol
Pazon N 3 a pizza azonosítója
Pnev C 15 a pizza neve
Par N 4 a pizza ára
Fazon N 3 a pizzafutár azonosítója
Fnev C 25 a pizzafutár neve
Ftel C 12 a pizzafutár telefonszáma
Vazon N 6 a megrendelő azonosítója
Vnev C 30 a megrendelő neve
Vcim C 30 a megrendelő lakcíme
Razon N 8 a rendelés sorszáma
Idopont DT a rendelés ideje
Db N 3 egy rendelési tétel darabszáma
*/

-- 1. Hogy hívják az egyes pizzafutárokat?
SELECT fnev FROM futar;
-- 2. Milyen pizzák közül lehet rendelni, és mennyibe kerülnek?
SELECT pnev, par FROM pizza;
-- 3. Mennyibe kerül átlagosan egy pizza?
SELECT ROUND(AVG(par)) AS atlag_ár FROM pizza;
-- 4. Mely pizzák olcsóbbak 1000 Ft-nál?
SELECT pnev, par FROM pizza WHERE par < 1000;
-- 5. Ki szállította házhoz az első (egyes sorszámú) rendelést?
SELECT rendeles.fazon, futar.fnev 
FROM rendeles JOIN futar ON rendeles.fazon = futar.fazon
WHERE razon = 1;
-- 6. Kik rendeltek pizzát délelőtt?
SELECT DISTINCT(vevo.vnev)
FROM rendeles JOIN vevo ON rendeles.vazon = vevo.vazon
WHERE EXTRACT(hour FROM idopont::timestamp) < 12;
-- 7. Milyen pizzákat evett Morgó?
SELECT vevo.vnev, pizza.pnev
FROM pizza 
JOIN tetel ON pizza.pazon = tetel.pazon
JOIN rendeles ON tetel.razon = rendeles.razon
JOIN vevo ON vevo.vazon = rendeles.vazon
WHERE vevo.vnev LIKE 'Morgó'
GROUP BY pizza.pnev, vevo.vnev;

-- 8. Ki szállított házhoz Tudornak?
SELECT DISTINCT(futar.fnev) 
FROM rendeles 
JOIN futar ON rendeles.fazon = futar.fazon
JOIN vevo ON rendeles.vazon = vevo.vazon
WHERE vevo.vnev = 'Tudor'
GROUP BY futar.fnev;
-- 9. Az egyes rendelések alkalmával ki kinek szállított házhoz?
SELECT vevo.vnev, futar.fnev, rendeles.razon
FROM futar
JOIN rendeles ON futar.fazon = rendeles.fazon
JOIN vevo ON rendeles.vazon = vevo.vazon;
-- 10. Mennyit költött pizzára Vidor?
SELECT SUM(pizza.par * tetel.db)
FROM vevo
JOIN rendeles ON vevo.vazon = rendeles.vazon
JOIN tetel ON rendeles.razon = tetel.razon
JOIN pizza ON tetel.pazon = pizza.pazon
WHERE vevo.vnev LIKE 'Vidor';
-- 11. Hány alkalommal rendelt Sorrento pizzát Kuka?
-- 12. Hány pizzát evett Szende?
-- 13. Hányszor rendelt pizzát Hapci?
-- 14. Hány darab Hawaii pizza fogyott összesen?
-- 15. Mennyit költöttek pizzára az egyes vevők?
-- 16. Mennyit vettek az egyes vevők a különböző pizzákból?
-- 17. Ki hány pizzát szállított házhoz az egyes napokon?
-- 18. Ki hány pizzát rendelt az egyes napokon?
-- 19. Mennyi volt a bevétel az egyes napokon?
-- 20. Hány pizza fogyott naponta?
-- 21. Mennyi pizza fogyott átlagosan naponta?
-- 22. Hány pizzát rendeltek átlagosan egyszerre?
-- 23. Hány házhoz szállítása volt az egyes futároknak?
-- 24. A fogyasztás alapján mi a pizzák népszerűségi sorrendje?
-- 25. A rendelések összértéke alapján mi a vevők sorrendje?
-- 26. Melyik a legdrágább pizza?
-- 27. Ki szállította házhoz a legtöbb pizzát?
-- 28. Ki ette a legtöbb pizzát?
-- 29. Melyik nap fogyott a legtöbb pizza?
-- 30. Melyik nap fogyott a legtöbb Hawaii pizza?
-- 31. Hány pizza fogyott a legforgalmasabb napon?
-- 32. Mennyi volt a bevétel a legjobb napon?
-- 33. Mi Szundi kedvenc pizzája?
-- 34. Kik rendeltek pizzát a nyitás napján?
-- 35. Mely pizzák olcsóbbak a Capricciosa pizzánál?
-- 36. Mely pizzák drágábbak az átlagosnál?
-- 37. Mely pizza ára van legközelebb az átlagárhoz?
-- 38. Mely futárok mentek többet házhoz az átlagosnál?
-- 39. Kik rendeltek legalább háromszor annyi pizzát, mint egy átlagos vevő?
-- 40. Kik szállítottak házhoz legalább tízszer?
-- 41. Mely pizzából fogyott legalább 50 db?
-- 42. Mely vevők nem rendeltek legalább háromszor?
-- 43. Kik rendeltek legalább 5 Hawaii pizzát?
-- 44. Milyen pizzából nem rendelt soha Tudor?
-- 45. Van-e olyan pizza, amelyből soha nem rendeltek?
-- 46. Ki nem rendelt soha Vesuvio pizzát?
-- 47. Mely pizzafutárokkal nem találkoztak az egyes vevők?
-- 48. Kik rendeltek több Sorrento pizzát, mint Vesuviot?
-- 49. Kik rendeltek legalább 5 Capricciosa vagy 8 Frutti di Mare pizzát?
-- 50. Kik rendeltek kétfajta pizzából is legalább 10 darabot?