﻿CREATE DATABASE ClothesShop

USE ClothesShop

DROP TABLE OrderItem
DROP TABLE Orders
DROP TABLE Payments
DROP TABLE Products
DROP TABLE Suppliers
DROP TABLE Categories
DROP TABLE Types
DROP TABLE Users


CREATE TABLE Users (
  id INT NOT NULL IDENTITY(1,1),
  firstname NVARCHAR(30) NOT NULL,
  lastname NVARCHAR(30) NOT NULL,
  email NVARCHAR(50) NOT NULL,
  avatar varchar(200) Not null,
  username VARCHAR(30) PRIMARY KEY NOT NULL,
  password VARCHAR(64) NOT NULL,
  address NVARCHAR(200) NOT NULL,
  phone NVARCHAR(15) NOT NULL,
  roleid INT NOT NULL,
  status BIT NOT NULL,
)
CREATE TABLE Types(
 id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 name NVARCHAR(100)
)
CREATE TABLE Categories(
 categoryid INT NOT NULL IDENTITY(1,1)  PRIMARY KEY,
 categoryname NVARCHAR(30) ,
 type_id INT FOREIGN KEY REFERENCES [dbo].Types(id),
)

CREATE TABLE Suppliers(
	supplierid INT NOT NULL IDENTITY(1,1)  PRIMARY KEY,
	suppliername NVARCHAR(100),
	supplierimage VARCHAR(255) NOT NULL,
)



CREATE TABLE Products(
 id INT NOT NULL IDENTITY(1,1)  PRIMARY KEY ,
 productname NVARCHAR(max) NOT NULL,
 supplierid INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Suppliers](supplierid) ON DELETE CASCADE ON UPDATE CASCADE,
 categoryid INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Categories](categoryid) ON DELETE CASCADE ON UPDATE CASCADE,
 size VARCHAR(40) NOT NULL,
 stock INT NOT NULL, 
 [description] NVARCHAR(max),
 [images] VARCHAR(255) NOT NULL,
 [colors] NVARCHAR(255) NOT NULL,
 releasedate  DATE NOT NULL,
 discount FLOAT,
 unitSold INT,
 price money NOT NULL,
 status bit not null,
 typeid int not null FOREIGN KEY REFERENCES [dbo].[Types](id) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE Payments(
paymentid INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
payment_method NVARCHAR(30)
)

CREATE TABLE [Orders](
order_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
orderdate DATETIME,
totalprice DECIMAL(10,2),
paymentid INT NOT NULL FOREIGN KEY REFERENCES Payments(paymentid) ,
username VARCHAR(30) NOT NULL FOREIGN KEY REFERENCES Users([username]),
status bit NOT NULL,
)

CREATE TABLE OrderItem(
	order_item_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	quantity INT ,
	price DECIMAL(10,2),
	product_id INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Products]([id]) ON DELETE CASCADE,
	order_id INT NOT NULL FOREIGN KEY REFERENCES  [dbo].[Orders](order_id)
)