-- 3. Wybierz nazwy i numery telefonów klientów, którzy nie kupili żadnego produktu z kategorii Confections
 

SELECT CustomerName 
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
 FROM Orders
    INNER JOIN order_details ON order_details.orderID = Orders.orderID
    INNER JOIN products ON order_details.productID = Products.productID
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
    WHERE CategoryName = 'Produce');

-- 4. Wybierz nazwy i numery telefonów klientów, którzy kupili więcej niż 3 różne produkty z kategorii .Confections.
 
--  5. Dla każdego produktu podaj maksymalną liczbę zamówionych jednostek
 
--  6. Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu danej kategorii 
 
-- 7. Dla każdego produktu podaj jego nazwę, cenę, średnią cenę wszystkich produktów oraz różnicę między ceną produktu a średnią ceną wszystkich produktów 
 
-- 8. Dla każdego produktu podaj jego nazwę kategorii, nazwę produktu, cenę, średnią cenę wszystkich produktów danej kategorii oraz różnicę między ceną produktu a średnią ceną wszystkich produktów danej kategorii.
 
-- 9. Podaj łączną wartość zamówienia o numerze 1025 (uwzględnij cenę za przesyłkę). 
 
-- 10. Podaj łączną wartość zamówień każdego zamówienia (uwzględnij cenę za przesyłkę).
 
-- 11. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
 
-- 12. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.
 
-- 13. Podaj produkty kupowane przez więcej niż jednego klienta
 
-- 14. Podaj produkty kupowane przez więcej niż 20 klientów