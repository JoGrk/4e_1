-- A. Ile jest chętnych do przyjęcia do poszczególnych przedszkoli? Wyświetl nazwę przedszkola i ilość chętnych.

SELECT Nazwa_przedszkola, COUNT(*)
FROM przedszkola   
    INNER JOIN dzieci ON dzieci.Id_przedszkola = przedszkola.Id_przedszkola
GROUP BY Nazwa_przedszkola;

-- B. Ilu jest chętnych do przyjęcia do poszczególnych przedszkoli, uwzględnij wyłącznie trzylatków
SELECT Nazwa_przedszkola, COUNT(*)
FROM przedszkola   
    INNER JOIN dzieci ON dzieci.Id_przedszkola = przedszkola.Id_przedszkola
WHERE Wiek = 3
GROUP BY Nazwa_przedszkola;

-- C. Wyświetl imiona i nazwiska dzieci, które mają na liście preferencji przedszkole mające w nazwie "Zuch". 
SELECT Imie,Nazwisko
FROM przedszkola   
    INNER JOIN dzieci ON dzieci.Id_przedszkola = przedszkola.Id_przedszkola
WHERE Nazwa_przedszkola like "%Zuch%";


 
-- D. Wyświetl imiona i nazwiska dzieci, które chodzą do przedszkola o identyfikatorze 16, 14, 8,28, 27 . Użyj operatora IN.
SELECT Imie,Nazwisko 
FROM dzieci   
WHERE Id_przedszkola IN (16,14,8,28,27);
-- E. Zmodyfikuj zapytanie z części D tak, aby zamiast numerów przedszkoli były wyświetlane ich nazwy.
SELECT Imie,Nazwisko, Nazwa_przedszkola
FROM dzieci
    INNER JOIN Nazwa_przedszkola.Id_przedszkola
WHERE Id_przedszkola IN (16,14,8,28,27);

 
-- F. Policz, ilu jest kandydatów do poszczególnych przedszkoli (wystarczą identyfikatory, uwzględnij tylko chłopców. Dane uporządkuj malejąco według ilości chętnych. Wyświetl tylko te wiersze, w których  ta ilość jest większa od 15.

-- G. Policz, ilu jest chętnych do poszczególnych przedszkoli. Wyświetl nazwy przedszkoli i liczbę miejsc w przedszkolach. Czy są takie przedszkola, w których liczba chętnych jest różna od ilości miejsc? 
 
-- H. Utwórz uporządkowaną alfabetycznie według nazwisk, listę pięcioletnich dziewczynek, które są zapisane do przedszkola Smerf lub Stokrotka.

-- I.  Podaj nazwy czterech przedszkoli, które mają największą ilość chętnych (uporządkowane malejąco według ilości chętnych) 