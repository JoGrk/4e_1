-- 1. tabela auta, wyświetl dwa pierwsze znaki numeru rejestracji wielkimi literami (pole tablica)
SELECT UPPER(LEFT (tablica, 2))
FROM auta;



-- 2 Z tabeli Handlowcy wyświetl wszystkie identyfikatory mailowe do znaku @ (substring_index)
SELECT substring_index (email, '@', 1)
FROM Handlowcy;

-- 3. Z tabeli Handlowcy wyświetl informacje o handlowcach w postaci: imie nazwisko, e-mail (CONCAT)

SELECT CONCAT_WS(' ',imie,nazwisko,email)
FROM Handlowcy;

-- 4. Wypisz inicjały wszystkich handlowców z tabeli Handlowcy z aliasem Inicjaly oraz ich imiona i nazwiska.
SELECT CONCAT(LEFT(imie,1), LEFT (nazwisko, 1)) 
AS inicjaly
FROM handlowcy;

-- 5.Z tabeli Producenci wypisz wszystkie nazwy producentów aut, które są długości 5 znaków. 
SELECT nazwa
from Producenci
WHERE CHAR_LENGTH(nazwa) = 5;