-- 1. Utwórz tabelę KatalogConfections zawierającą wszystkie dane o produktach z kategorii Confections
CREATE TABLE KatalogConfections AS 
SELECT products.*
FROM categories INNER JOIN products ON categories.categoryID = products.categoryID
WHERE CategoryName = 'Confections';

-- 2. ze względu na nowy podatek podnieś cenę wszystkich artykułów kategorii Confections o 20% w tabeli Products
UPDATE Products
SET Price = Price * 1.2
WHERE CategoryID = (
    SELECT CategoryID FROM Categories
    WHERE CategoryName = 'Confections'
);
-- 3. Zmień nazwę tabeli KatalogConfections na KatalogTaniejJuzBylo 
ALTER TABLE KatalogConfections
RENAME TO KatalogTaniejJuzBylo;
-- 4. Skopiuj do tabeli KatalogTaniejJuzBylo wszystkie produkty z kategorii Beverages
INSERT INTO KatalogTaniejJuzBylo
SELECT products.*
FROM categories INNER JOIN products on categories.
categoryID = products.categoryID
WHERE CategoryName = 'Beverages';

-- 5. Do tabeli Archiwum przenieś dane z tabeli Orders dotyczące zamówień z 1996 roku (skopiuj - jeśli trzeba utwórz tabelę -i potem usuń)
CREATE TABLE Archiwum AS
SELECT orders.*, ProductID, Quantity FROM Orders INNER JOIN order_details ON orders.orderID=order_details.orderID
WHERE OrderDate like '1996%';

DELETE FROM order_details
WHERE OrderID in (SELECT OrderID from Orders WHERE OrderDate like '1996%');

DELETE FROM orders where OrderDate like '1996%';

-- 6. Utwórz tabelę  Archiwum_Kontrahentów z danymi: nazwa dostawcy lub nazwa klienta, osoba do kontaktu, miasto, kraj z Włoch
CREATE TABLE Archiwum_Kontrahentow AS 
SELECT SupplierName, ContactName, City, Country
FROM Suppliers 
WHERE Country = 'Italy'
UNION
SELECT CustomerName, ContactName, City, Country
FROM Customers 
WHERE Country = 'Italy';

-- 7. Usuń klientów i dostawców z Włoch z tabel Customers i Suppliers (dwoma zapytaniami)


-- 8. Do tabeli Archiwum_Kontrahentów dodaj kontrahentów z Niemiec i Francji
INSERT INTO Archiwum_Kontrahentow (SupplierName, ContactName, City, Country)
SELECT CustomerName, ContactName, City, Country
FROM Customers
WHERE Country IN ('Germany','France'); 

 

-- 9. Z tabeli Customers wybierz dane klientów z Niemiec i dodaj ich do tabeli Suppliers

-- 10. Utwórz tabelę Archiwum zawierającą wszystkie dane z tabeli Orders dotyczące zamówień z 1996 roku

 

-- 11. Usuń z tabeli Orders wszystkie zamówienia z 1996 roku

-- 12. Do tabeli Archiwum dodaj wszystkie dane dotyczące zamówień ze stycznia 1997 roku