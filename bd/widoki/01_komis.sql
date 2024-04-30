-- 1. Przygotuj widok Wspolpracownicy zawierający imiona i nazwiska osób z tabeli Pracownicy i z tabeli Handlowcy.
CREATE VIEW Wspolpracownicy AS 
SELECT imie,nazwisko 
FROM Pracownicy 
Union 
SELECT imie,nazwisko
FROM Handlowcy;

DROP VIEW Wspolpracownicy;

-- 2. Korzystając z perspektywy Wspolpracownicy wyszukaj osoby o imieniu Ilona.

SELECT * FROM Wspolpracownicy WHERE imie = 'Ilona';

-- 3. Przygotuj widok SredniPrzebiegAut wyświetlający rocznik i średni przebieg aut z danego rocznika.

DROP VIEW SredniPrzebiegAut;

CREATE VIEW SredniPrzebiegAut AS
SELECT rocznik, AVG(przebieg) AS Sredni_Przebieg
FROM Auta
GROUP BY rocznik;


-- 4. Zgłoś zapytanie do perspektywy SredniPrzebiegAut: wyszukaj informacje o rocznikach, z których średni przebieg aut jest mniejszy od 100000.

SELECT *
FROM SredniPrzebiegAut
WHERE Sredni_Przebieg<100000;

-- 5.Utwórz widok ModeleNazwy, w którym wyświetlisz dla każdego modelu jego nazwę (w kolumnie o nazwie model) i nazwę producenta pobraną z tabeli Producenci (w kolumnie o nazwie producent) oraz rocznik początkowy i rocznik końcowy danego modelu.
CREATE VIEW ModeleNazwy AS 
SELECT 
    Modele.nazwa AS model,
    Producenci.nazwa AS producent, 
    Modele.rocznik_pocz,
    modele.rocznik_konc
FROM 
    Modele
    INNER JOIN Producenci ON Modele.producent = Producenci.ID;
 
-- 6. Za pomocą widoku ModeleNazwy policz, ile jest modeli Fiata i wyniki wyświetl w kolumnie o nazwie Fiat
SELECT COUNT(*) AS FIAT
FROM ModeleNazwy
WHERE producent = 'Fiat';
 
-- 7. Przy użyciu perspektywy ModeleNazwy wyświetl nazwy wszystkich modeli produkowanych przez Fiata
SELECT model, producent
FROM ModeleNazwy
where producent="Fiat";
 
-- 8. Usuń widok wirtualny ModeleNazwy.
 
-- 9. przygotuj widok ModeleAuta zawierający wszystkie pola z tabeli Auta oraz wszystkie niemal pola z tabeli Modele (oprócz identyfikatora) (użyj INNER JOIN)
CREATE VIEW ModeleAuta AS
SELECT Auta.*,producent,nazwa 
FROM Auta
INNER JOIN  Modele ON modele.id = auta.model;

-- 10. Korzystając z perspektywy ModeleAuta wyświetl nazwę, rocznik, wartość samochodów Megane (nazwa)
 
SELECT nazwa,rocznik,wartosc
FROM ModeleAuta
WHERE nazwa='Megane';


-- 11. usuń widok ModeleAuta

DROP VIEW ModeleAuta;
 
-- 12. Przygotuj widok ProducenciModeleAuta zbierający dane z tych trzech tabel (z wyjątkiem zdublowanych) (uzyj INNER JOIN)
CREATE VIEW ProducenciModeleAuta
AS
SELECT Auta.*, Modele.nazwa AS Modele_nazwa, Producenci.nazwa AS Producenci_nazwa
FROM Auta
INNER JOIN Modele ON modele.ID = auta.modelż
INNER JOIN Producenci ON Producenci.ID = modele.producent;
 
-- 13. Korzystając z widoku ProducenciModeleAuta wyświetl auta o przebiegu mniejszym niż 150 000

SELECT *
FROM ProducenciModeleAuta
WHERE przebieg < 150000; 