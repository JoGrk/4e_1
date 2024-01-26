-- bd_4e
-- Zapytania DML - w3schools - cz.2

-- ZADANIE
-- Zapytania DML - w3schools - cz.2
-- Zadanie
-- Więcej
-- Wymagania zaliczenia
DELETE FROM order_details
WHERE OrderId IN (
    SELECT OrderId from orders
    WHERE CustomerId IN (
        SELECT CustomerID FROM customers
        WHERE Country = 'Mexico'
    )
);
DELETE FROM Orders
WHERE CustomerId IN (
    SELECT CustomerID FROM Customers
    WHERE Country = 'Mexico'
);
-- 1. Usuń klientów z Meksyku
DELETE FROM customers
WHERE Country = 'Mexico';
 
-- 2. Usuń produkty o cenie mniejszej niż 15
UPDATE Order_Details
SET ProductID = NULL
WHERE ProductID IN (
    SELECT ProductID FROM Products
    WHERE Price < 15
);


DELETE FROM Products
WHERE price < 15;
 
-- 3. Zmień numer dostawcy produktu o id 2 na dostawcę o id 3
UPDATE Products
SET SupplierID=3
WHERE ProductID=2;
 
-- 4, Zmień osobę do kontaktów na siebie dla klienta o numerze 1
 UPDATE customers
 SET ContactName = "Jan Kowalski"
 WHERE CustomerID = 1
-- 5. Zmniejsz o 5% cenę wszystkich produktów dostarczanych przez dostawcę o numerze 7
 UPDATE products
 SET price=price*0.95
 WHERE supplierID=7;
-- 6. Zwiększ cenę produktów z kategorii 1 o 10%
UPDATE products
SET price = price*1.1
WHERE CategoryID=1;
 
-- 7. Dodaj nową kategorię produktów
INSERT INTO Categories (CategoryName, Description)
VALUES ("nie wiem", "ok");


 
-- 8. Z tabeli Pracownicy (Employees) usuń pracownika o numerze 3 (EmployeeID). 
UPDATE Orders
SET EmployeeID=NULL
WHERE employeeID=3;
DELETE FROM Employees
WHERE EmployeeID=3;
-- 9. Dodaj jeszcze jednego dostawcę (tabela Shippers)
INSERT INTO Shippers
VALUES (NULL, 'DPD', '123456789');
-- 10. Podnieś cenę Tofu do 30 (ProductName -nazwa produktu, Price - cena, tabela Products)
UPDATE Products
SET price=30
WHERE productname='tofu';
-- 11. Podnieś o 10% cenę (Price) wszystkich produktów o nazwie (ProductName) zaczynającej się na literę C) (tabela Products)
UPDATE Products
SET price=price*1.1
WHERE productname LIKE 'C'%;
-- 12. Usuń z tabeli OrderDetails zamówienia o ID 10443 oraz 10440 (OrderID).

-- 13. Zmień adres (Address), miasto (City) i kraj (Country) dostawcy o numerze 2  (SupplierID) na ul. Pocztową, Nakło, Polskę. (tabela Suppliers)