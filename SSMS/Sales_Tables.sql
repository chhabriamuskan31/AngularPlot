
CREATE DATABASE sales;

use sales
go

CREATE TABLE customers (
CustomerID INT IDENTITY(1, 1) PRIMARY KEY
,CustomerName VARCHAR(500)
,Email VARCHAR(500)
,Username VARCHAR(500)
,STATE VARCHAR(500)

)

CREATE TABLE products (
ProductID INT IDENTITY(1, 1) PRIMARY KEY
,ProductName VARCHAR(500)
,ProductDescription NVARCHAR(max)
)

CREATE TABLE orders (
OrderId INT IDENTITY(1, 1) PRIMARY KEY
,ProductId INT FOREIGN KEY REFERENCES Products(ProductId)
,CustomerId INT FOREIGN KEY REFERENCES Customers(CustomerId)
,Quantity INT
,DateAdded DATETIME
)
