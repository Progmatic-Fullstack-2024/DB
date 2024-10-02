/*
Id N 11 azonosító
Orszag C 27 az ország neve
Fovaros C 19 az ország fővárosa
Foldr_hely C 50 földrajzi elhelyezkedés
Terulet N 11,2 terület km2-ben
Allamforma C 30 államforma
Nepesseg N 8 népesség 1000 főben van megadva!
Nep_fovaros N 8 a főváros népessége 1000 főben van megadva!
Autojel C 3 autójel
Country C 31 országnév ékezetes írás nélkül, idegen elnevezésekkel is
Capital C 19 főváros ékezetes írás nélkül, idegen elnevezésekkel is
Penznem C 20 pénznem
Penzjel C 3 pénzjel
Valtopenz C 18 váltópénz a váltószámmal együtt
Telefon N 3 nemzetközi telefon-hívószám
GDP N 5 egy főre jutó bruttó hazai termék USA dollárban
(GDP: gross domestic product)
Kat N 1 ismertségi kategória (1,2,3)
*/

SELECT * FROM orszagok;
-- 1. Mi MADAGASZKÁR fővárosa?
SELECT fovaros, orszag FROM orszagok WHERE orszag LIKE 'MADAGASZKÁR';
-- 2. Melyik ország fővárosa OUAGADOUGOU?
SELECT orszag FROM orszagok WHERE fovaros LIKE 'OUAGADOUGOU';
-- 3. Melyik ország autójele a TT?
SELECT orszag, autojel FROM orszagok WHERE autojel LIKE 'TT ';
-- 4. Melyik ország pénzének jele az SGD?
SELECT orszag FROM orszagok WHERE penzjel LIKE 'SGD';
-- 5. Melyik ország nemzetközi telefon-hívószáma a 61?
SELECT orszag FROM orszagok WHERE telefon = 61;
-- 6. Mekkora területű Monaco?
SELECT terulet FROM orszagok WHERE orszag = 'MONACO';
-- 7. Hányan laknak Máltán?
SELECT nepesseg * 1000 AS málta_népessége FROM orszagok WHERE orszag = 'MÁLTA';
-- 8. Mennyi Japán népsűrűsége?
SELECT nepesseg * 1000 / terulet AS p/km FROM orszagok WHERE orszag = 'JAPÁN';
-- 9. Hány lakosa van a Földnek?
SELECT SUM(nepesseg * 1000)  AS föld_nepessége FROM orszagok;
SELECT SUM(nepesseg) * 1000  AS föld_nepessége FROM orszagok;
-- 10. Mennyi az országok területe összesen?
SELECT SUM(terulet) AS osszes_terulet FROM orszagok;
-- 11. Mennyi az országok átlagos népessége?
SELECT ROUND(AVG(nepesseg)) AS atlag_nepesseg FROM orszagok;
-- 12. Mennyi az országok átlagos területe?
SELECT AVG(terulet) AS A FROM orszagok;
-- 13. Mennyi a Föld népsűrűsége?
SELECT SUM(nepesseg) * 1000 / SUM(terulet) FROM orszagok;
-- 14. Hány 1.000.000 km2-nél nagyobb területű ország van?
SELECT COUNT(orszag) FROM orszagok WHERE terulet > 1000000;
-- 15. Hány 100 km2-nél kisebb területű ország van?
SELECT COUNT(*) FROM orszagok WHERE terulet < 100;
-- 16. Hány 20.000 főnél kevesebb lakosú ország van?
SELECT COUNT(*) FROM orszagok WHERE nepesseg < 20;
-- 17. Hány országra igaz, hogy területe kisebb 100 km2-nél, vagy pedig a lakossága kevesebb 20.000 főnél?
SELECT COUNT(*) FROM orszagok WHERE terulet < 100000 OR nepesseg < 20;
-- 18. Hány ország területe 50.000 és 150.000 km2 közötti?
SELECT COUNT(*) FROM orszagok WHERE terulet >= 50000 AND terulet <= 150000;
SELECT COUNT(*) FROM orszagok WHERE terulet BETWEEN 50000 AND  150000;
-- 19. Hány ország lakossága 8 és 12 millió közötti?
SELECT COUNT(*) FROM orszagok WHERE nepesseg BETWEEN 8000 AND 12000;
-- 20. Mely fővárosok népesebbek 20 millió főnél?

-- 21. Mely országok népsűrűsége nagyobb 500 fő/km2-nél?
-- 22. Hány ország államformája köztársaság?
-- 23. Mely országok pénzneme a kelet-karib dollár?
-- 24. Hány ország nevében van benne az "ORSZÁG" szó?
-- 25. Mely országokban korona a hivatalos fizetőeszköz?
-- 26. Mennyi Európa területe?
-- 27. Mennyi Európa lakossága?
-- 28. Mennyi Európa népsűrűsége?
-- 29. Hány ország van Afrikában?
-- 30. Mennyi Afrika lakossága?
-- 31. Mennyi Afrika népsűrűsége?
-- 32. Melyek a szigetországok?
-- 33. Mely országok államformája hercegség, vagy királyság?
-- 34. Hány országnak nincs autójelzése?
-- 35. Mennyi a váltószáma az aprópénznek azokban az országokban, ahol nem 100?
-- 36. Hány ország területe kisebb Magyarországénál?
-- 37. Melyik a legnagyobb területű ország, és mennyi a területe?
-- 38. Melyik a legkisebb területű ország, és mennyi a területe?
-- 39. Melyik a legnépesebb ország, és hány lakosa van?
-- 40. Melyik a legkisebb népességű ország, és hány lakosa van?
-- 41. Melyik a legsűrűbben lakott ország, és mennyi a népsűrűsége?
-- 42. Melyik a legritkábban lakott ország, és mennyi a népsűrűsége?
-- 43. Melyik a legnagyobb afrikai ország és mekkora?
-- 44. Melyik a legkisebb amerikai ország és hányan lakják?
-- 45. Melyik az első három legsűrűbben lakott "országméretű" ország (tehát nem város- vagy törpeállam)? Elvárt megoldás: MÁLTA, BANGLADES, MALDIV-SZIGETEK
-- 46. Melyik a világ hat legnépesebb fővárosa?
-- 47. Melyik tíz ország egy főre jutó GDP-je a legnagyobb?
-- 48. Melyik tíz ország össz-GDP-je a legnagyobb?
-- 49. Melyik országban a legszegényebbek az emberek (legkisebb a GDP, ahol egyáltalán van GDP)?
-- 50. Melyik a 40. legkisebb területű ország?
-- 51. Melyik a 15. legkisebb népsűrűségű ország?
-- 52. Melyik a 61. legnagyobb népsűrűségű ország?
-- 53. Melyik három ország területe hasonlít leginkább Magyaroszág méretéhez?
-- 54. Az emberek hányadrésze él Ázsiában?
-- 55. A szárazföldek mekkora hányadát foglalja el Oroszország?
-- 56. Az emberek hány százaléka fizet euroval?
-- 57. Hányszorosa a leggazdagabb ország egy főre jutó GDP-je a legszegényebb ország egy főre jutó GDP-jének?
-- 58. A világ össz-GDP-jének hány százalékát adja az USA?
-- 59. A világ össz-GDP-jének hány százalékát adja az euroövezet?
-- 60. Melyek azok az átlagnál gazdagabb országok, amelyek nem az európai vagy az amerikai kontinensen találhatóak?
-- 61. Milyen államformák léteznek Európában?
-- 62. Hányféle államforma létezik a világon?
-- 63. Hányféle fizetőeszközt használnak Európában az eurón kívül?
-- 64. Mely pénznemeket használják több országban is?
-- 65. Mely országok államformája egyedi?