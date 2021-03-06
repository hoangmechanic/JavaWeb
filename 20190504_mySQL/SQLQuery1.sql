--Tạo CSDL
CREATE DATABASE Jdbc
GO
USE Jdbc
GO
CREATE TABLE Categories
(
	Id CHAR(3) NOT NULL,
	Name NVARCHAR(50) NOT NULL,
	PRIMARY KEY(Id)
)
GO
CREATE TABLE Products
(
	Id iNT IDENTITY(1000,1) NOT NULL ,
	Name NVARCHAR(50) NOT NULL,
	UnitPrice FLOAT,
	Quantity INT DEFAULT 0,
	ProductDate DATE DEFAULT getDate(),
	Available BIT DEFAULT 1,
	CategoryId CHAR(3) NULL,
	PRIMARY KEY(Id),
	FOREIGN KEY(CategoryId) REFERENCES Categories(Id),
	UNIQUE(Name),
	CHECK(Quantity >=0 AND UnitPrice >= 0)
)
GO
INSERT INTO Categories(Id, Name) VALUES('MOB', N'Mobile')
INSERT INTO Categories(Id, Name) VALUES('CAM', N'Camera')
INSERT INTO Categories(Id, Name) VALUES('LAP', N'Laptop')
SELECT * FROM Categories
GO
INSERT INTO Products(Name, UnitPrice,CategoryId)
	VALUES(N'iPhone 10', 1000, 'MOB')
INSERT INTO Products(Name, UnitPrice,CategoryId)
	VALUES(N'Samsum Note 10', 900, 'MOB')
INSERT INTO Products(Name, UnitPrice,CategoryId)
	VALUES(N'Sonny Vaio', 1200, 'LAP')
INSERT INTO Products(Name, UnitPrice,CategoryId)
	VALUES(N'DEL Star', 500, 'LAP')
INSERT INTO Products(Name, UnitPrice,CategoryId)
	VALUES(N'Cannon', 1000, 'CAM')
INSERT INTO Products(Name, UnitPrice,CategoryId)
	VALUES(N'Sony', 400, 'MOB')
SELECT * FROM Products
GO
UPDATE Products SET Quantity=10, Available=0 WHERE Id=1002
SELECT * FROM Products
GO
BACKUP DATABASE Jdbc TO DISK='c:/temp/jdbc.bak'
GO
USE master
GO
DROP DATABASE Jdbc
GO
RESTORE DATABASE Jdbc FROM DISK='c:/temp/jdbc.bak'
GO
USE Jdbc
GO
SELECT * FROM Categories
SELECT * FROM Products

