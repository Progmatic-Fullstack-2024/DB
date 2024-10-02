# Mi az adatbázis? (Database röviden DB)
- strukturált adatok szervezett kollekciója
- általában táblákból áll, a táblák pedig sorokból és oszlopokból
- kezelése leggyakrabban az SQL (Structured Query Language) nyelv használatával történik

# Relációs Adatbázis (Relational Database röviden RDB)
- az adatokat a közöttük lévő kapcsolattal együtt tárolja
- általában több adattáblából áll, a táblákat pedig sorok és oszlopok alkotják
- létrehozásához, az adatok kezeléséhez az SQL nyelvet használják leggyakrabban

### Felépítése
- tábla: az összefüggő adatok gyűjteménye
- oszlop, másképpen mező: az azonos típusú adatokat jelenti
- sor, másképpen rekord: a logikailag összetartozó adatokat jelenti

![](./assets/dog_table.png)
- a példán a tábla a dog
- mezői name, type, birth_year

![](./assets/dog_people.png)
- itt meg láthatjuk hogy két tábla között hoogy épül fel egy kapcsolat

# Reláció: a táblák közötti kapcsolat
- a relációs adatbázis attól “relációs”, hogy a táblái között kapcsolat van
- a táblák közötti kapcsolat azt jelenti, hogy egy tábla egyik (vagy akár több) mezője (oszlopa) hivatkozik a többi tábla mezőire
- egy tábla lehet kapcsolatban saját magával is (az egyik mezője hivatkozhat egy másik mezőjére)
- egy tábla akármennyi másik táblára hivatkozhat

# A kapcsolat több fajtái
- One to One (egy az egyhez)
- One to Many (egy a sokhoz) és Many to One (sok az egyhez)
- Many to Many (sok a sokhoz)
- Self Referencing (saját magára hivatkozás)

![](./assets/reference.png)

## One to One
- egy tábla egyik mezője hivatkozik egy másik tábla egyik mezőjére mindkét táblán legfeljebb egy rekord tartozhat a másik tábla rekordjához
- nem túl gyakori kapcsolatfajta
- nem elvárás, hogy A táblán és B táblán legyen összetartozó rekord
## One to Many / Many to One
- az egyik tábla egyik rekordja a másik tábla több rekordjához is tartozhat
- nem elvárás, hogy A táblán és B táblán legyen összetartozó rekord
## Many to Many
- az egyik tábla több rekordja a másik tábla több rekordjához tartozhat
- a kapcsolat(ok) létrehozásához ún. kapcsolótáblát használunk
- nem elvárás, hogy A táblán és B táblán legyen (több) összetartozó adat
## Self Referencing
- a tábla egyik rekordja a saját másik rekordjához tartozhat

## Lekérdezések
### SELECT

- adatok lekérdezésére szolgál
- szintaxisa: SELECT * FROM table_name;
- a table_name a tábla neve
● a * jel azt jelenti, hogy az adott tábla minden mezőjét ki szeretnénk kérni
● amennyiben csak bizonyos mezőkre van szükségünk, a csillag helyére írjuk a
mezők neveit, vesszővel elválasztva
SELECT column1, column2, column3 FROM table_name;
● ez az utasítás a táblában található összes rekordot visszaadja


```SQL
SELECT * FROM orszagok;

SELECT COUNT(*) AS orszag_darabszam FROM orszagok;
SELECT SUM(terulet) AS világ_terulet FROM orszagok;
SELECT MIN(terulet) AS legkisebb_orszag  FROM orszagok;
SELECT MAX(terulet) AS legkisebb_orszag  FROM orszagok;
SELECT AVG(terulet) AS legkisebb_orszag  FROM orszagok;

SELECT SUM(terulet) / COUNT(*) AS atlag_TERULET FROM orszagok;

SELECT COUNT(*), allamforma FROM orszagok 
WHERE foldr_hely LIKE '%Európa%'
GROUP BY allamforma
HAVING COUNT(*) > 1
ORDER BY COUNT(*) ASC
LIMIT 10;

SELECT * FROM orszagok
ORDER BY terulet
LIMIT 10;

SELECT * FROM orszagok
LIMIT 10;
```