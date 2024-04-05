-- CONCAT

-- 1. Z tabeli Customers Wypisz w jednym polu Address, PostalCode, City jako Addres, oddzielone spacją
SELECT 
    CONCAT (address, ' ', postalCode, ' ', city) Address
FROM customers; 
-- 2. Wypisz nazwy produktów i ich ceny. Każda cena powinna być poprzedzona znakiem $
SELECT 
ProductName,
CONCAT('$',Price)
FROM Products;

-- CONCAT_WS

-- 3. Z tabeli Suppliers Wypisz w jednym polu Address, PostalCode, City jako Addres, oddzielone spacją. Użyj funkcji CONCAT_WS
SELECT
    CONCAT_WS(' ', Address, PostalCode, City) Addres  
FROM Suppliers;
-- SUBSTRING    SUBSTR   MID pozycja może być ujemna (liczymy wtedy od końca)

-- 4. Z nazwy produkt od trzeciego znaku dwa znaki
SELECT SUBSTRING(ProductName, 3,2)
from products;

-- 5 Shippers, wyświetlamy sam numer kierunkowy
SELECT SUBSTRING(phone, 2,3)
FROM Shippers;


-- 6. wyświetlamy przedostatni znak z Phone (pesel)

SELECT SUBSTRING(Phone, -2, 1)
from Shippers;

-- LEFT 

-- 7. Wypisz 12 pierwszych znaków z nazwy każdego klienta

SELECT LEFT(CustomerName, 12)
FROM Customers;
-- 8. Wypisz pierwsze 7 znaków nazwy produktu i dodaj na końcu znaki ...
SELECT CONCAT(LEFT(ProductName, 7),'...')
FROM Products;

-- REPLACE

-- REVERSE

-- CHAR_LENGTH długość w znakach

-- 9. Wypisz kraje, z których pochodzą dostawcy, a w osobnej kolumnie długość nazwy kraju 
SELECT Country, CHAR_LENGTH(Country) as len
FROM Suppliers;

-- 10. Ile najwięcej znaków mają nazwy klientów? Wypisz.
SELECT MAX(CHAR_LENGTH(CustomerName))
from customers;
-- 11. Dodatkowo wypisz najdłuższą nazwę lub nazwy
Select CustomerName 
FROM Customers 
Where LENGTH(CustomerName)=
        (SELECT MAX(CHAR_LENGTH(CustomerName))
         from customers);    
-- LENGTH długość w bajtach

-- 12. Wypisz długości nazw produktów używając funkcji char_length i length. Czy jest jakaś różnica?
SELECT ProductName, char_length (ProductName), length(ProductName)
FROM Products;
-- UPPER 


-- 13. Wypisz nazwy kategorii zapisane wielkimi literami

SELECT UPPER(categoryName) 
FROM Categories;  

-- LOWER

-- 14. Wypisz nazwy produktów małymi literami
SELECT LOWER(ProductName) 
FROM Products; 
-- SUBSTRING_INDEX


-- 15. oddziel imie i nazwisko z pola  ContactName
SELECT SUBSTRING_INDEX(ContactName,' ',1),SUBSTRING_INDEX(ContactName,' ',-1)
FROM Suppliers;
-- FORMAT   pl_PL

-- 16. Wypisz ceny produktów zaokrąglone do jednego miejsca po przecinku
SELECT CONCAT(FORMAT(Price, 1, 'pl_PL'), ' zł') 
FROM Products;
-- 17. Dla poszczególnych kategorii wypisz średnie ceny, zaokrąglone do jednego miejsca po przecinku. 
Select CategoryName, FORMAT(AVG(Price), 1)
from Products
    INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
group by Products.CategoryID;