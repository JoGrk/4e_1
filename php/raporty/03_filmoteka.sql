-- a) Zwrócenie tytułów filmów, dla których gatunek to SF,
SELECT tytul
FROM filmy
WHERE Gatunek = 'SF';

-- b) Zwrócenie wszystkich tytułów filmów wraz z nazwiskami reżyserów,
SELECT tytul, nazwisko
FROM filmy
    INNER JOIN rezyserzy ON filmy.rezyserID = rezyserzy.IDrezyser;
-- c) Zwrócenie filmów, dla których ocena w recenzji jest równa 4, 
SELECT filmy.*
from filmy
    INNER JOIN recenzje ON filmy.recenzjaID = recenzje.IDRecenzja
WHERE ocena = 4;

-- d) Dodanie rekordu do tabeli rezyserzy z danymi: ID – 4, Andrzej Wajda
INSERT INTO Rezyserzy
values (4,"Andrzej","Wajda");

/// wypisz tytuł, gatunek filmu, nazwisko reżysera, treść recenzji w postaci tabeli 
    // dodatkowo nazwy pól w wierszu nagłówkowym
SELECT tytul, gatunek, nazwisko, tresc
FROM filmy
    INNER JOIN recenzje ON filmy.recenzjaID= recenzje.IDRecenzja
    INNER JOIN rezyserzy ON filmy.rezyserID = rezyserzy.IDrezyser;