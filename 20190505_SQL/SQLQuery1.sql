USE EShopV10
GO
SELECT * FROM Categories
SELECT * FROM Products
SELECT * FROM Categories WHERE Id=1000
SELECT * FROM Products WHERE CategoryId=1000
SELECT * FROM Orders
SELECT * FROM OrderDetails

SELECT * FROM Orders WHERE Id=10252
SELECT * FROM OrderDetails WHERE OrderId=10252

SELECT * FROM Customers WHERE Id='ANTON'
SELECT * FROM Orders WHERE CustomerId='ANTON'

SELECT * FROM Products 
	WHERE UnitPrice BETWEEN 5 AND 10
	ORDER BY UnitPrice DESC

SELECT * FROM Products
	WHERE YEAR(ProductDate) IN (1982,1979)

SELECT * FROM Products
	WHERE DATEPART(QUARTER,ProductDate)= 1

SELECT Name, DATEDIFF(MONTH,ProductDate,getdate()) FROM Products
SELECT * FROM Products WHERE DATEDIFF(MONTH, ProductDate, getDate())<100

SELECT * FROM Products
	WHERE Name LIKE '%on%'
	
SELECT * FROM Products
	WHERE CategoryId IN (SELECT Id FROM Categories WHERE Name LIKE '%on%')

SELECT * FROM Categories
SELECT c.NameVN, p.Name, p.UnitPrice FROM Categories c
	JOIN Products p ON c.Id=p.CategoryId

SELECT c.NameVN, p.Name, p.UnitPrice FROM Categories c
	LEFT JOIN Products p ON c.Id=p.CategoryId
	
SELECT c.*, p.Id FROM Categories c
	LEFT JOIN Products p ON c.Id=p.CategoryId
	WHERE p.Id IS NULL

SELECT CategoryId,
	 AVG(UnitPrice), 
	SUM(Quantity),
	COUNT(*)
	FROM  Products
	WHERE YEAR(ProductDate)<1990
	GROUP BY CategoryId

SELECT CategoryId,
	 AVG(UnitPrice), 
SUM(Quantity),
	COUNT(*)
	FROM  Products
	WHERE YEAR(ProductDate)<1990
	GROUP BY CategoryId
	HAVING AVG(UnitPrice) >20
	
SELECT c.NameVN,
	AVG(UnitPrice), 
	SUM(Quantity),
	COUNT(*)
FROM  Products p
	JOIN Categories c ON c.Id= p.CategoryId
WHERE YEAR(ProductDate)<1990
GROUP BY c.NameVN
	HAVING AVG(UnitPrice) >20

SELECT
	d.ProductId,
	SUM(UnitPrice*Quantity*(1-Discount))
FROM OrderDetails d
GROUP BY d.ProductId

--DOANH SO TUNG SAN PHAM
SELECT
	d.ProductId,
	SUM(UnitPrice*Quantity*(1-Discount)) Revenue,
	SUM(quantity) Quantity
FROM OrderDetails d
GROUP BY D.ProductId

--Doanh so tung loai
SELECT
	c.NameVN,
	SUM(d.UnitPrice*d.Quantity*(1-d.Discount)) Revenue,
	SUM(d.quantity) Quantity
FROM OrderDetails d
	join Products p ON p.Id =d.ProductId
	JOIN Categories c ON c.Id=p.CategoryId
GROUP BY c.NameVN
GO
CREATE PROC spSearchProducts1
(
	@Min FLOAT=0,
	@Max FLOAT=5000
)
AS
BEGIN
	SELECT * FROM Products
		WHERE UnitPrice BETWEEN @Min AND @Max
END
GO
EXEC spSearchProducts1 5, 10
GO
CREATE PROC spRevenueByCategory
AS
BEGIN
	SELECT
		c.NameVN,
		SUM(d.UnitPrice*d.Quantity*(1-d.Discount)) Revenue,
		SUM(d.quantity) Quantity
	FROM OrderDetails d
		join Products p ON p.Id =d.ProductId
		JOIN Categories c ON c.Id=p.CategoryId
	GROUP BY c.NameVN
END
EXEC spRevenueByCategory
GO
CREATE PROC spInsertCategory
(
	@Name VARCHAR(50),
	@NameVN NVARCHAR(50),
	@Id INT OUTPUT
)
AS
BEGIN
	INSERT INTO Categories(Name,NameVN) VALUES(@Name,@NameVN)
	SET @Id= @@IDENTITY
END

DECLARE @Id INT
EXEC spInsertCategory 'Juice', N'Nước Ngọt', @Id OUTPUT
PRINT @Id