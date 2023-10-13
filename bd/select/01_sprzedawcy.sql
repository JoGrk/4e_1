-- 4. Wyświetl dane o wszystkich sprzedawcach.
SELECT * FROM SPRZEDAWCY;

-- 5. Wyświetl nazwiska i prowizje sprzedawców.
SELECT Nazwisko,Prowizja FROM SPRZEDAWCY;
-- 6. Wyświetl dane o klientach z Paryża i Moskwy.
SELECT * FROM klienci 
WHERE Miasto = "Paris" OR miasto = "Moscow";
-- 7. Zmień powyższe tak, aby zapis warunku był krótszy (użyj IN)
SELECT * FROM klienci
WHERE Miasto IN ('Paris', 'Moscow');

-- 8. Wyświetl dane o klientach , którzy nie mieszkają ani w Paryżu, ani w Moskwie (użyj NOT i IN)
SELECT * FROM klienci
WHERE Miasto NOT IN ('Paris', 'Moscow');

-- 9.Wyświetl dane o klientach, których identyfikatory to 3007, 3008 lub 3009 (użyj IN)
SELECT * FROM Klienci
    -> WHERE IDKlienta IN (3007, 3008, 3009);

-- 10. Wyświetl dane o sprzedawcach, których prowizja mieści się w zakresie od 0,12 do 0,14 (użyj BETWEEN ... AND...)
SELECT * FROM sprzedawcy
    WHERE prowizja between 0.12 and 0.14; 

-- 11. Wyświetl  informacje o zamówieniach, których wartość mieści się w zakresie od 500 do 4000 (BETWEEN ... AND...)
SELECT * FROM zamowienia
WHERE wartosc BETWEEN 500 AND 4000;

-- 12. zmodyfikuj powyższe tak, aby dodatkowo wykluczyć zamówienia o wartości 948.50 i 1983.43 ( SELECT.... WHERE (... between .. and ...) and  ... not ... in(....,...) ;  )
SELECT * FROM zamowienia
WHERE wartosc BETWEEN 500 AND 4000
AND wartosc NOT IN (948.50, 1983.43)

-- 13. Wyświetl informacje o tych klientach, których nazwy zaczynają się na literę 'B'  ( ... LIKE '...%' )
SELECT * FROM Klienci
WHERE Nazwa LIKE 'B%';
-- 14. Wyświetl informacje o tych klientach, których nazwy kończą się na literę n

SELECT * FROM Klienci
WHERE nazwa LIKE '%n';

-- 15. Wyświetl informacje o sprzedawcach, których pierwsza litera nazwiska to 'N', a czwarta to 'l'  (l jak liść)
SELECT * FROM Sprzedawcy
WHERE nazwisko LIKE 'n__l%'; 