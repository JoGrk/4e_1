-- 1.  Utwórz tabelę Dane z jednym polem typu int o nazwie numer . 
CREATE TABLE Dane (
    numer INT 
);

-- 2. Zapisz w tabeli liczbę 10.
INSERT INTO Dane VALUES (10);
-- 3.  rozpocznij transakcję  
START TRANSACTION;


-- 4. Zmień liczbę na 20
update Dane 
SET numer =20;


-- 5. Wycofaj się z transakcji. 
rollback;


-- 6. jaka jest zawartość tabeli Dane?


-- 7. rozpocznij transakcję
START TRANSACTION;

-- 8. zmień liczbę na 30
UPDATE Dane
SET numer=30;

-- 9. zatwierdź transakcję
COMMIT;

-- 10. Jaka jest zawartość tabeli Dane?
SELECT * FROM Dane;
-- -----------------------------

-- 11 Utwórz tabelę Dane2 z dwoma polami typu int: numer i kwota. Wpisz dwa wiersze: (1, 10) oraz (2, 20).
CREATE TABLE Dane2(
    numer INT,
    kwota INT
);
INSERT INTO Dane2 
VALUES (1,10), (2,20);


-- 12. Otwórz dwa wiersze okna poleceń Rozpocznij w obu transakcje.
START TRANSACTION;
-- 13. Pokaż zawartość tabeli dane2;
SELECT * FROM dane2;
-- 14. W pierwszej zmodyfikuj kwotę w wierszu o numerze 1, w drugiej kwotę w wierszu o numerze 2 (udało się? ____ )
UPDATE Dane2
Set kwota = 1000
WHERE numer=1;


UPDATE Dane2
Set kwota = 2000
WHERE numer=2;

-- 15. Zatwierdź transakcję w tym oknie, w którym jest to możliwe. Co się stało w drugim oknie? 

-- 16. Jaka jest zawartość tabeli Dane?

-- 17. Zatwierdź drugą transakcję. Jaka jest zawartość tabeli Dane?