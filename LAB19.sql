USE Northwind;

SELECT * FROM Customers;

SELECT DISTINCT Country FROM Customers;

SELECT * FROM Customers WHERE CustomerID LIKE '%BL%';

SELECT * FROM Orders WHERE OrderID < 10348;

SELECT * FROM Customers WHERE PostalCode= '1010' OR PostalCode= '3012'   OR PostalCode= '12209' OR PostalCode= '05023';

SELECT * FROM Orders WHERE ShipRegion IS NOT NULL;

SELECT * FROM Customers ORDER BY Country,City; 

INSERT INTO Customers(CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax)
VALUES ('ABCD','GIUY','JFBQ FBJEQF','PERSON','105986n bhoegira','Warsaw','EU',36155,'Poland',785092,NULL);

UPDATE Orders SET ShipRegion='EuroZone' WHERE ShipCountry='France';

DELETE FROM [Order Details] WHERE Quantity = 1;

SELECT AVG(Quantity) FROM [Order Details];
SELECT MAX(Quantity) FROM [Order Details];
SELECT MIN(Quantity) FROM [Order Details];

SELECT AVG(Quantity) FROM [Order Details] GROUP BY OrderID;
SELECT MAX(Quantity) FROM [Order Details] GROUP BY OrderID;
SELECT MIN(Quantity) FROM [Order Details] GROUP BY OrderID;

SELECT CustomerID FROM Orders WHERE OrderID = '10290';

SELECT 8 FROM Orders INNER JOIN  Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT 8 FROM Orders LEFT JOIN  Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT 8 FROM Orders RIGHT JOIN  Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT FirstName FROM Employees WHERE ReportsTo= NULL;

SELECT FirstName FROM Employees WHERE ReportsTo= '2';