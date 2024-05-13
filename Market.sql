
--To create tables

CREATE TABLE Products(
    ProductId SERIAL PRIMARY KEY,
	ProductName varchar(200)
)
CREATE TABLE Category(
    CategoryId SERIAL PRIMARY KEY,
	CategoryName varchar(200)
)
CREATE TABLE ProductCategory(
    Id SERIAL PRIMARY KEY,
	ProductID int,
	CategoryID int,
	FOREIGN KEY (ProductID)  REFERENCES Products(ProductId),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryId)
)
---------------------
--To insert value
INSERT INTO Products(ProductName)VALUES('Bliss');
INSERT INTO Category(CategoryName)VALUES('Juice');
INSERT INTO ProductCategory(ProductID, CategoryID)VALUES(1,1);
--Getting Product Info
SELECT PR.ProductId, PR.ProductName, CT.CategoryName FROM Products AS PR JOIN ProductCategory
AS PC ON PR.ProductId = PC.ProductID JOIN Category as CT 
ON PC.CategoryID = CT.CategoryID
