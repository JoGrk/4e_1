-- 1. Wyświetl nazwy firm klientów  i daty zamówień
    SELECT CustomerName, OrderDate
    FROM Customers
	    INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 

        
-- 2, Wyświetl dane spedytora z datą zamówienia
    SELECT ShipperName, OrderDate
    FROM Shippers
        INNER JOIN Orders ON Shippers.ShipperID = Orders.ShipperI;
-- 3. Wyświetl nazwiska pracowników i daty zamówień
    SELECT LastName, OrderDate
    FROM Employees
        INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID;
-- 4. Wyświetl nazwy towarów, nazwy kategorii
 SELECT ProductName, CategoryName
 FROM Categories
 INNER JOIN Products ON Categories.CategoryID = Products.CategoryID;
-- 5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
  SELECT ProductName, CategoryName, OrderID
 FROM Categories
 INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
 INNER JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID;

-- 6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
 SELECT ProductName, CategoryName, OrderDate, CustomerID
 FROM Categories
 INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
 INNER JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
 INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID;
-- 7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
 SELECT ProductName, CategoryName, OrderDate, CustomerName
 FROM Categories
 INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
 INNER JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
 INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
 INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
-- 8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)
SELECT ProductName, OrderDetails
FROM OrderDetails
INNER JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY ProductName;
 
-- 9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów
SELECT CustomerName, OrderDate, ProductName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID;