-- select
-- 1.  Wypisać nazwę wszystkich towarów, cenę i pole ze średnią cenę wszystkich towarów

-- 2 . Wypisać nazwę towaru, cenę i różnicę między jego ceną a średnią ceną wszystkich towarów

SELECT productname, price, price - (SELECT AVG(price) FROM products)
FROM products


-- 3. wypisze nazwę towaru, cenę oraz ile razy jego cena jest większa od najmniejszej ceny wszystkich towarów (stosunek ceny do ceny minimalnej)

-- where
-- 4.  wybieramy te zamówienia, w których łączna ilość zamówionych produktów jest mniejsza od średniej ilości zamawianych produktów

-- 5. zapytanie zwracające nazwę najtańszego towaru
nazwy towarów o cenie mniejszej od średnia 

-- 6. zapytanie zwracające nazwy i ceny wszystkich produktów z kategorii Seafood o cenach niższych niż średnia cena produktów

-- 7. wyświetl nazwę i cenę towarów, które zostały zamówione (kiedykolwiek) w ilości co najmniej 15 sztuk (Quantity )

-- 8. wyświetl nazwę i cenę towarów, które zawsze są zamawiane w ilości co najmniej 15 sztuk (Quantity ) (i były co najmniej raz zamówione)
SELECT DISTINCT order_details.productID
FROM order_details
    INNER JOIN products ON order_details.productID =
    products.productID
WHERE Quantity < 15;

SELECT productname, price
FROM products
WHERE productID NOT IN (SELECT DISTINCT order_details.productID
        FROM order_details
        INNER JOIN products ON order_details.productID =
        products.productID
        WHERE Quantity < 15); 
-- 9. Wyświetl nazwiska i imiona klientów , którzy nie korzystali z firmy  Speedy Express

-- 10. Wszystkie informacje o klientach, mających tę samą wartość w polu CustomerName (może wpisanych przez pomyłkę?)
SELECT CustomerName FROM Customers
Order By CustomerName;

Insert Into Customers
(CustomerName) Values('Wolski');

SELECT CustomerName, CustomerID FROM Customers
WHERE CustomerName IN ('Wolski','Wilman Kala');

SELECT CustomerName FROM Customers
GROUP BY CustomerName HAVING Count(*) > 1;

SELECT * FROM Customers
WHERE CustomerName IN (SELECT CustomerName FROM Customers
GROUP BY CustomerName HAVING Count(*) > 1);

-- update

-- 11 Podnieś o 10% ceny produktów z kategorii  "Confections"
UPDATE Products
SET price=price*1.1
WHERE CategoryID=(SELECT CategoryID from categories where CategoryName='Confections');
-- 12  Dla zamówień klientów z UK zmień spedytora na "United Package"

-- 13. Dodaj nowy produkt z kategorii Confections dostarczony przez Exotic Liquid 
