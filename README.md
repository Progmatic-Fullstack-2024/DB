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

<hr />

# SQL Lekérdezések - Parancsok listája

## 1. Adatlekérdezés és szűrés

- `SELECT`: Adatok lekérdezése.
- `WHERE`: Szűrési feltételek megadása.
- `LIKE`: Részleges egyezés keresése (wildcards: `%` bármennyi karakter, `_` egy karakter).
  - **Példa**: `SELECT * FROM Employees WHERE FirstName LIKE 'J%';`
- `IN`: Egy értékhalmazra való szűrés.
  - **Példa**: `SELECT * FROM Employees WHERE DepartmentID IN (1, 2, 3);`
- `BETWEEN`: Tartomány alapú szűrés.
  - **Példa**: `SELECT * FROM Employees WHERE Salary BETWEEN 3000 AND 5000;`
- `DISTINCT`: Ismétlődő rekordok kizárása.
  - **Példa**: `SELECT DISTINCT Department FROM Employees;`
- **`LIMIT`**: Meghatározza, hogy hány sor jelenjen meg a lekérdezés eredményeiből.
  - **Példa**: `SELECT * FROM Employees LIMIT 10;` – Csak az első 10 rekordot adja vissza.
- **`OFFSET`**: Meghatározza, hogy a lekérdezés hány sor után kezdje meg az eredmények megjelenítését.
  - **Példa**: `SELECT * FROM Employees LIMIT 10 OFFSET 5;` – Az eredményekből az első 5 rekordot kihagyja, és a következő 10 rekordot adja vissza.

A `LIMIT` és `OFFSET` kombinálása hasznos lehet, például pagináció során, amikor az eredményeket oldalakra szeretnénk bontani.

## 2. Adatok rendezése és csoportosítása

- `ORDER BY`: Eredmények rendezése növekvő (`ASC`) vagy csökkenő (`DESC`) sorrendben.
  - **Példa**: `SELECT * FROM Employees ORDER BY LastName ASC;`
- `GROUP BY`: Adatok csoportosítása egy vagy több oszlop alapján.
  - **Példa**: `SELECT Department, COUNT(*) FROM Employees GROUP BY Department;`
- `HAVING`: Csoportosított eredmények szűrése.
  - **Példa**: `SELECT Department, COUNT(*) FROM Employees GROUP BY Department HAVING COUNT(*) > 10;`

## 3. Adatösszesítés

- `SUM()`: Értékek összege.
- `COUNT()`: Sorok száma.
- `MAX()`: Legnagyobb érték.
- `MIN()`: Legkisebb érték.
- `AVG()`: Átlag.

## 4. Függvények

- **Matematikai függvények**: `ABS()`, `ROUND()`, `CEIL()`, `FLOOR()`.
- **Karakterfüggvények**: `UPPER()`, `LOWER()`, `LENGTH()`, `SUBSTRING()`.
- **Dátumfüggvények**: `NOW()`, `CURDATE()`, `DATEDIFF()`, `DATEADD()`.
- **COALESCE()**: Az első nem-null értéket adja vissza az argumentumokból.
  - **Példa**: SELECT COALESCE(PhoneNumber, 'Nincs megadva') FROM Employees;

## 5. Kapcsolatok kezelése (JOIN-ek)

- `INNER JOIN`: Közös rekordok két táblából.
  - **Példa**: `SELECT * FROM Employees INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;`
- `LEFT JOIN`: Minden rekord a bal oldali táblából, és a megfelelő rekordok a jobb oldali táblából.
- `RIGHT JOIN`: Minden rekord a jobb oldali táblából, és a megfelelő rekordok a bal oldali táblából.
- `FULL JOIN`: Minden rekord mindkét táblából, függetlenül a megfeleléstől.

## 6. Allekérdezések és összetett lekérdezések

- **Allekérdezés**: Egy lekérdezés beágyazása egy másikba.
  - **Példa**: `SELECT * FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees);`
- **EXISTS**: Ellenőriz, hogy egy almenet eredményez-e sorokat.
  - **Példa**: `SELECT * FROM Employees WHERE EXISTS (SELECT * FROM Orders WHERE Orders.EmployeeID = Employees.EmployeeID);`

## 7. Adatbázis szerkezetének módosítása

- `CREATE DATABASE`: Új adatbázis létrehozása.
- `CREATE TABLE`: Új tábla létrehozása.
- `ALTER TABLE`: Tábla szerkezetének módosítása (pl. oszlop hozzáadása).
  - **Példa**: `ALTER TABLE Employees ADD HireDate DATE;`
- `DROP TABLE`: Tábla törlése.
- `DROP DATABASE`: Adatbázis törlése.
- `TRUNCATE TABLE`: Minden rekord törlése egy táblából (visszaállíthatatlanul).

## 8. Adatok módosítása

- `INSERT INTO`: Új rekord beszúrása.
- `UPDATE`: Meglévő adatok frissítése.
- `DELETE`: Rekordok törlése.

## 9. Indexek és kulcsok

- `CREATE INDEX`: Index létrehozása egy vagy több oszlopon a keresési teljesítmény javítása érdekében.
- `DROP INDEX`: Index törlése.
- `PRIMARY KEY`: Elsődleges kulcs megadása.
- `FOREIGN KEY`: Idegen kulcs megadása másik táblára való hivatkozással.
