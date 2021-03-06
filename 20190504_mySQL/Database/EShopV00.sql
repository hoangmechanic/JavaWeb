USE [EShopV00]
GO
/****** Object:  StoredProcedure [dbo].[spInsertCategory]    Script Date: 7/12/2018 4:11:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInsertCategory]
(
	@Id CHAR(3),
	@Name NVARCHAR(50)
)
AS
BEGIN
	INSERT INTO Categories(Id, Name) VALUES(@Id, @Name)
END
GO
/****** Object:  StoredProcedure [dbo].[spInventory]    Script Date: 7/12/2018 4:11:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spInventory]
AS
BEGIN
	SELECT 
		c.Name AS Category,
		sum(p.UnitPrice * p.Quantity) AS Value,
		count(*) AS Count,
		min(p.UnitPrice) AS MinPrice,
		max(p.UnitPrice) AS MaxPrice,
		avg(p.UnitPrice) AS AvgPrice
	FROM Products p
		JOIN Categories c ON c.Id=p.CategoryId
	GROUP BY c.Name
	ORDER BY Value
END
GO
/****** Object:  StoredProcedure [dbo].[spSearchProducts]    Script Date: 7/12/2018 4:11:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spSearchProducts]
(
	@MaxPrice FLOAT,
	@MinPrice FLOAT = 0
)
AS
BEGIN
	SELECT * FROM Products 
		WHERE UnitPrice BETWEEN @MinPrice AND @MaxPrice
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/12/2018 4:11:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/12/2018 4:11:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductDate] [date] NOT NULL,
	[CategoryId] [char](3) NOT NULL,
	[Available] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'BAG', N'Tui xách du lịch')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'CAM', N'Máy ảnh')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'DES', N'Máy tính để bàn')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'FAS', N'Nón thời trang')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'LAP', N'Máy tính xách tay')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'LEW', N'Đồ trang sức')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'MOB', N'Điện thoại di động')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'MOT', N'Xe máy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'PER', N'Nước hoa')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'WAT', N'Đồng hồ')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1001, N'Aniseed Syrup', 190, 190, CAST(0xD6070B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1002, N'Change', 19, 19, CAST(0xB80B0B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1003, N'Aniseed Syrup', 10, 10, CAST(0x26FE0A00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1004, N'Chef Anton''s Cajun Seasoning', 22, 22, CAST(0x0E020B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1005, N'Chef Anton''s Gumbo Mix', 21.35, 21, CAST(0xF7050B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1006, N'Grandma''s Boysenberry Spread', 25, 25, CAST(0xE1090B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1007, N'Uncle Bob''s Organic Dried Pears', 30, 30, CAST(0x0D0C0B00 AS Date), N'FAS', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1008, N'Northwoods Cranberry Sauce', 40, 40, CAST(0x4CFC0A00 AS Date), N'LAP', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1009, N'Mishi Kobe Niku', 97, 97, CAST(0xF80F0B00 AS Date), N'LEW', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1010, N'Ikura', 31, 31, CAST(0xC91B0B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1011, N'Queso Cabrales', 21, 21, CAST(0xEC0F0B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1012, N'Queso Manchego La Pastora', 38, 38, CAST(0xD7130B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1013, N'Konbu', 6, 6, CAST(0x97270B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1014, N'Tofu', 23.25, 23, CAST(0x90270B00 AS Date), N'FAS', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1015, N'Genen Shouyu', 15.5, 15, CAST(0xAB170B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1016, N'Pavlova', 17.45, 17, CAST(0x8B1F0B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1017, N'Alice Mutton', 39, 39, CAST(0x602F0B00 AS Date), N'LEW', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1018, N'Carnarvon Tigers', 62.5, 62, CAST(0x1F340B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1019, N'Teatime Chocolate Biscuits', 9.2, 9, CAST(0x4A2B0B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1020, N'Sir Rodney''s Marmalade', 81, 81, CAST(0x342F0B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1021, N'Sir Rodney''s Scones', 10, 10, CAST(0x1D330B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1022, N'Gustaf flower', 21, 21, CAST(0xC0300B00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1023, N'Tunnbr Korea', 9, 9, CAST(0xAB340B00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1024, N'Guarana¡ Fanta¡stica', 4.5, 4, CAST(0xB92F0B00 AS Date), N'WAT', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1025, N'NuNuCa Nuaa-Nougat-Creme', 14, 14, CAST(0x81340B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1026, N'Gumbar Gummibarchen', 31.23, 31, CAST(0x49310B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1027, N'Schoggi Schokolade', 43.9, 43, CAST(0x112E0B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1028, N'Russle Sauerkraut', 45.6, 45, CAST(0xC6330B00 AS Date), N'FAS', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1029, N'Tharinger Rostbratwurst', 123.79, 123, CAST(0xAE330B00 AS Date), N'LEW', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1030, N'Nord-Ost Matjeshering', 25.89, 25, CAST(0x3E340B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1031, N'Gorgonzola Telino', 12.5, 12, CAST(0x7A330B00 AS Date), N'MOB', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1032, N'Mascarpone Fabioli', 32, 32, CAST(0x8B340B00 AS Date), N'MOB', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1033, N'Geitost', 2.5, 2, CAST(0xC2320B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1034, N'Sasquatch Ale', 14, 14, CAST(0x1E330B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1035, N'Steeleye Stout', 18, 18, CAST(0x2B340B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1036, N'Inlagd Sill', 19, 19, CAST(0xCA080B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1037, N'Gravad lax', 26, 26, CAST(0xB80C0B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1038, N'Cate de Blaye', 263.5, 263, CAST(0xAC090B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1039, N'Chartreuse verte', 18, 18, CAST(0x950D0B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1040, N'Boston Crab Meat', 18.4, 18, CAST(0x1F030B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1041, N'Jack''s New England Clam Chowder', 9.65, 9, CAST(0x0D070B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1042, N'Singaporean Hokkien Fried Mee', 14, 14, CAST(0xC6FE0A00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1043, N'Ipoh Coffee', 46, 46, CAST(0xCD070B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1044, N'Gula Malacca', 19.45, 19, CAST(0x63FA0A00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1045, N'Rogede sild', 9.5, 9, CAST(0xCA160B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1046, N'Spegesild', 12, 12, CAST(0xB81A0B00 AS Date), N'BAG', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1047, N'Zaanse koeken', 9.5, 9, CAST(0x340A0B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1048, N'Chocolade', 12.75, 12, CAST(0x1F0E0B00 AS Date), N'CAM', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1049, N'Maxilaku', 20, 20, CAST(0x09120B00 AS Date), N'CAM', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1050, N'Valkoinen suklaa', 16.25, 16, CAST(0xF2150B00 AS Date), N'CAM', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1051, N'Manjimup Dried Apples', 53, 53, CAST(0x4A2A0B00 AS Date), N'FAS', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1052, N'Filo Mix', 7, 7, CAST(0x00260B00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1053, N'Perth Pasties', 32.8, 32, CAST(0x092E0B00 AS Date), N'LEW', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1054, N'Tourtiare', 7.45, 7, CAST(0xF6310B00 AS Date), N'LEW', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1055, N'Pacta chinois', 24, 24, CAST(0xC02E0B00 AS Date), N'LEW', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1056, N'Gnocchi di nonna Alice', 38, 38, CAST(0x8D2E0B00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1057, N'Ravioli Angelo', 19.5, 19, CAST(0x7A320B00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1058, N'Escargots de Bourgogne', 13.25, 13, CAST(0x87340B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1059, N'Raclette Courdavault', 55, 55, CAST(0x0C2F0B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1060, N'Camembert Pierrot', 34, 34, CAST(0xF6320B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1061, N'Sirop d''aOrable', 28.5, 28, CAST(0x982E0B00 AS Date), N'LAP', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1062, N'Tarte au sucre', 49.3, 49, CAST(0x852F0B00 AS Date), N'CAM', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1063, N'Vegie-spread', 43.9, 43, CAST(0x482F0B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1064, N'Wimmers gute Semmelknadel', 33.25, 33, CAST(0x65310B00 AS Date), N'PER', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1065, N'Louisiana Fiery Hot Pepper Sauce', 21.05, 21, CAST(0xF82F0B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1066, N'Louisiana Hot Spiced Okra', 17, 17, CAST(0xE1330B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1067, N'Laughing Lumberjack Lager', 14, 14, CAST(0x9E330B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1068, N'Scottish Longbreads', 12.5, 12, CAST(0x9B310B00 AS Date), N'CAM', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1069, N'Gudbrandsdalsost', 36, 36, CAST(0xFC330B00 AS Date), N'MOB', 0)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1070, N'Outback Lager', 15, 15, CAST(0x12310B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1071, N'Flotemysost', 21.5, 21, CAST(0x75080B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1072, N'Mozzarella di Giovanni', 34.8, 34, CAST(0x5F0C0B00 AS Date), N'MOB', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1073, N'Rad Kaviar', 15, 15, CAST(0xA90B0B00 AS Date), N'BAG', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1074, N'Longlife Tofu', 10, 10, CAST(0x660B0B00 AS Date), N'FAS', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1075, N'RhanbrAu Klosterbier', 7.75, 7, CAST(0x880B0B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1076, N'Lakkalik AAri', 18, 18, CAST(0x0AFA0A00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1077, N'Original Frankfurter grane Soae', 13, 13, CAST(0x27020B00 AS Date), N'LAP', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1081, N'Chai', 19, 19, CAST(0x910D0B00 AS Date), N'WAT', 1)
INSERT [dbo].[Products] ([Id], [Name], [UnitPrice], [Quantity], [ProductDate], [CategoryId], [Available]) VALUES (1083, N'Mishi Kobe Niku', 97, 97, CAST(0x21150B00 AS Date), N'LEW', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [ProductDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'UnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'ProductDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
