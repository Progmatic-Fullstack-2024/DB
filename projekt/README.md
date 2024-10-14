# Online oktatási platform - adatbázis tervezése és lekérdezéses feladatok

## Adatbázis tervezési feladat

Egy online oktatási platform adatbázisát kell megtervezni, amelyben különböző entitásokat, például kurzusokat, oktatókat, hallgatókat, tanszékeket és klubokat kezelünk. A feladat lényege, hogy logikus kapcsolatokat alakítsunk ki ezek között az entitások között. A feladat része az is, hogy az adatok integritását biztosító szabályokat vezessünk be, valamint figyelembe vegyük az adatbázis hatékonyságát és skálázhatóságát.

### 1. Hallgatók kezelése

A platformon számos hallgató vesz részt, mindegyikük egy adott szakon tanul, és az adott szakhoz tartozó kurzusokra iratkozik be. A hallgatók adatai között szerepelnie kell a nevüknek, beiratkozási dátumuknak, valamint a szakuknak (a tanszékük ID-jának). A hallgatók különböző feladatokat végeznek el a kurzusaikon, és ezekre pontokat kapnak, amelyeket szintén nyilván kell tartani.

### 2. Kurzusok és azok előfeltételei

A kurzusok olyan tananyagokat reprezentálnak, amelyeket oktatók tanítanak. Minden kurzusnak van egy meghatározott kreditértéke, amely jelzi annak súlyát a hallgatók tanulmányai során. Egyes kurzusokhoz előfeltételek tartozhatnak, vagyis egy hallgató csak akkor vehet fel egy adott kurzust, ha már teljesített egy vagy több másik kurzust. Ez egy önreferenciás kapcsolatot eredményez a kurzusok között.

### 3. Oktatók és tanszékek

Az oktatók különböző tanszékeken dolgoznak, és minden oktató több kurzust is tarthat. A tanszékek az egyetem különböző tudományos egységeit képviselik, és minden tanszéknek van egy vezetője, aki egy adott oktató. Fontos biztosítani, hogy egy oktató csak egy tanszék vezetője lehessen, és egy tanszékhez csak egy vezető tartozhat.

### 4. Feladatok és értékelések

Minden kurzushoz különböző feladat tartozik, amelyeket a hallgatóknak a megadott határidőre kell beadniuk. A feladatokhoz maximális pontszám van hozzárendelve, és a hallgatók által elért pontokat folyamatosan rögzíteni kell. Az értékelések összekapcsolják a hallgatók teljesítményét a kurzusok feladataival.

### 5. Beiratkozások

A hallgatók beiratkoznak kurzusokra, és a beiratkozások időpontjai is rögzítésre kerülnek. Egy hallgató több kurzusra is beiratkozhat, és egy kurzusra több hallgató is beiratkozhat. A beiratkozások révén követhetjük nyomon, hogy egy hallgató mely kurzusokon vesz részt.

### 6. Klubok és tagság

A hallgatók részt vehetnek különböző hallgatói klubokban, ahol közösségi tevékenységeket végezhetnek. Egy hallgató több klub tagja is lehet, és egy klubnak több hallgatója is lehet. A klubtagságokat külön tábla kezeli, amely rögzíti a hallgatók klubokhoz való csatlakozásának időpontját.

### Tervezési szempontok

- **Kapcsolatok:** Fontos biztosítani, hogy a hallgatók és kurzusok közötti kapcsolatokat beiratkozási adatokon keresztül kezeljük. Egy hallgató sok kurzusra iratkozhat be, és egy kurzusnak sok hallgatója lehet, tehát ez egy many-to-many kapcsolat.
- **Önreferenciás kapcsolatok:** A kurzusok előfeltételeinek kezelése önreferenciás kapcsolatokként jelennek meg, mivel egy kurzusnak más kurzus(ok) lehetnek előfeltételei.
- **Integritás:** Az oktatók és tanszékek közötti kapcsolatokat úgy kell kialakítani, hogy minden tanszéknek csak egy vezetője lehessen, és egy oktató ne vezethessen több tanszéket.
- **Adatkonzisztencia:** Az értékelések, feladatok és kurzusok közötti kapcsolatok biztosítják, hogy egy hallgató teljesítménye minden egyes kurzusra visszavezethető legyen. Fontos, hogy minden értékelés a megfelelő hallgatóhoz és feladathoz legyen kapcsolva.

### Kihívások és összetettség

- **Self-referencing kapcsolat kezelése:** A kurzusok előfeltételeinek kezelése különösen fontos, mert egyes kurzusok több előfeltétellel is rendelkezhetnek, és ezeket dinamikusan kell kezelni.
- **Many-to-many kapcsolat:** A hallgatók és klubok közötti kapcsolat sok-sok kapcsolat, amely külön kapcsolótáblában kezelhető.
- **Feladatok és pontszámok súlyozása:** A feladatok maximális pontszáma és a hallgatók teljesítményének súlyozása szintén komplexitást ad az adatbázis kezeléséhez.

---
