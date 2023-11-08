-- 1. policz ilość wszystkich rekordów (zapisów) ;
SELECT COUNT(*)
FROM towar;

-- 2. z opisami - największą i najmniejsza CENĘ, oraz średnią arytmetyczną CENY ;
SELECT MIN(cena), MAX(cena), AVG(cena)
FROM towar;

-- 3. sumę wartości towarów, średnią arytmetyczną wartości (ILOSC * CENA) ;
SELECT SUM(ILOSC*CENA), AVG(ILOSC*CENA)
FROM towar;

-- 4. policz średnią arytmetyczną ceny, a później policz ręcznie średnią arytmetyczną ceny = suma CENY / ilość rekordów. 
SELECT AVG(cena), SUM(cena)/COUNT(*)
FROM towar;

-- 5. Wyświetl średnią cenę wszystkich towarów o cenie pomiędzy 10 a 1000 zł

SELECT AVG(cena) 
FROM towar
WHERE cena BETWEEN 10 AND 1000;

--6.  wyświetl sumę masy (ilosc * waga) , ale tylko dla rodzaju  GD i TR
SELECT sum(ilosc * waga)
FROM towar
WHERE rodzaj IN("GD","TR");
-- 7. Wyświetl łączną ilość wszystkich zamówionych produktów,
SELECT SUM(ilosc)
FROM towar
WHERE ZAMOW='PRAWDA';

-- 8. wyświetl największą wartość (ilosc * cena)  towarów wyprodukowanych w 1997 roku
SELECT MAX(ILOSC*CENA)
FROM towar
WHERE YEAR(DATA_PROD)=1997;
WHERE DATA_PROD=1997;


-- 9. policz ile rekordów jest w każdym RODZAJU 
SELECT rodzaj,COUNT(*) 
FROM towar
GROUP BY rodzaj; 

-- 10. policz ile rekordów jest w każdym RODZAJU, posortuj malejąco wg RODZAJU;
SELECT rodzaj,COUNT(*)
FROM towar
GROUP BY rodzaj
ORDER BY rodzaj desc;

-- 11. policz sumę i średnią arytmetyczną wartości (ilość * cena) i minimalnej i maksymalnej masie (ilość * waga) dla każdego RODZAJU towaru ;

SELECT rodzaj,
    SUM(ILOSC*CENA),
    AVG(ILOSC*CENA),
    MIN(ILOSC*WAGA),
    MAX(ILOSC*WAGA)
FROM towar
GROUP BY rodzaj;

-- 12. policz ile rekordów jest w każdym RODZAJU - wyświetl ilości rekordów większe od 15 ;
SELECT rodzaj, COUNT(ilosc) 
FROM towar
GROUP BY rodzaj 
HAVING COUNT(ilosc) > 15;


-- 13. policz średnią arytmetyczną ceny dla każdego RODZAJU - wyświetl średnie mniejsze od 500;
SELECT rodzaj, AVG(cena)
FROM towar
GROUP BY rodzaj
HAVING AVG(cena) < 500;

-- 14. dla każdego rodzaju towarów wyświetl ilość rekordów, średnią wagę, średnią ilość, maksymalną i minimalną cenę dla ilości rekordów w RODZAJU mniejszej od 15.
SELECT rodzaj, count(*), avg(waga), avg(ilosc), max(cena), min(cena)
FROM towar
GROUP BY rodzaj
HAVING count(*)<15;

-- 15. dla każdego rodzaju towarów wyświetl maksymalną cenę dla ilości rekordów w RODZAJU większe od 10. Uwzględnij tylko towary zamówione.
SELECT rodzaj, max(cena)
FROM towar
WHERE zamow = 'PRAWDA'
GROUP BY rodzaj
HAVING COUNT(*) > 10;
-- 16. Oblicz minimalną cenę towarów niezamówionych dla każdego rodzaju. 
SELECT rodzaj, MIN(CENA)
FROM towar
WHERE zamow != 'Prawda'
GROUP BY rodzaj;
-- 17. oblicz średnią cenę towarów zamówionych (zamow) i nie zamówionych
SELECT AVG(CENA), zamow
FROM towar
GROUP BY zamow;

-- 18. oblicz średnią cenę towarów wyprodukowanych w 1999 roku  dla poszczególnych rodzajów towaru
select avg(cena),rodzaj
from towar
WHERE YEAR(DATA_PROD)=1999
GROUP by rodzaj;