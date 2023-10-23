-- 1. Wyświetl nazwy firm klientów z Niemiec. (nazwa,kraj, miasto)
SELECT CustomerName, Country, City
FROM Customers
WHERE Country = 'Germany';

-- 2. Ogranicz do tych z Berlina.
SELECT CustomerName, Country, City
FROM Customers
WHERE City = 'Berlin';

-- 3. Wyświetlamy nazwy firm (kraj, miasto) klientów z Niemiec, ale nie z Berlina.
select * from Customers
where Country = "Germany"
and City != "Berlin"

-- 4. Nazwy firm (kraj, miasto) z miasta na literę A.
SELECT *
FROM Customers
WHERE City LIKE "A%"

-- 5. Nazwy firm (kraj, miasto) z miasta, które na drugim miejscu ma literę a.
SELECT *
FROM Customers
where City like "_a"
-- 6. Nazwy firm (kraj, miasto) z USA, Niemiec, Kanady i Francji.
select * 
from Customers
WHERE Country IN ("USA","Germany", "Canada","France");

-- 7. Z kraju o nazwie co najmniej czteroliterowej

SELECT * 
FROM Customers
WHERE Country LIKE "____%"; 

-- 8. Wyświetl dane o zamówieniach z lipca dowolnego roku. 
SELECT *
FROM Orders
WHERE OrderDate LIKE '____-07-%'
-- 9. wyświetl dane o zamówieniach dokonanych w pierwszych 10 dniach lipca 1996
select *
from Orders
Where OrderDate
Between "1996-07-01"
AND "1996-07-10"

-- 10 Wyświetl produkty uporządkowane według ceny rosnąco (najpierw najtańsze). 
Select *
from Products
Order by Price 





-- 11. Wyświetl pięć najdroższych produktów
SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5

-- 12. Wyświetl towary (nazwy i ceny) o cenach pomiędzy 10 a 100
Select *
FROM Products
where Price between 10 and 100

-- 13. Jak wyżej, ale tylko towary dostawców o kodzie 2.
Select *
FROM Products
where SupplierID = "2"
-- 14. Jak wyżej, ale obok dostawców o kodzie 2  wybierz także 8, 7,4 i 3

Select *
FROM Products
where SupplierID IN (2,8,7,3,4);