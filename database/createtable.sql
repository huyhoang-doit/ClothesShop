﻿CREATE DATABASE ClothesShop
USE ClothesShop

CREATE TABLE Users (
  id INT NOT NULL IDENTITY(1,1),
  firstname NVARCHAR(30) NOT NULL,
  lastname NVARCHAR(30) NOT NULL,
  email NVARCHAR(50) NOT NULL,
  username VARCHAR(30) PRIMARY KEY NOT NULL,
  password VARCHAR(64) NOT NULL,
  roleid INT NOT NULL,
  status BIT NOT NULL,
)
-- DROP TABLE Users

CREATE TABLE Category(
 categoryname NVARCHAR(30) ,
 categoryid INT NOT NULL IDENTITY(1,1)  PRIMARY KEY
)
-- DROP TABLE Category

CREATE TABLE Supplier(
	suppliername NVARCHAR(100),
	supplierid INT NOT NULL IDENTITY(1,1)  PRIMARY KEY,
	supplierimage VARCHAR(255) NOT NULL,
)
-- DROP TABLE Supplier

CREATE TABLE Products(
 id INT NOT NULL IDENTITY(1,1)  PRIMARY KEY ,
 productname NVARCHAR(max) NOT NULL,
 supplierid INT NOT NULL REFERENCES [dbo].[Supplier](supplierid),
 categoryid INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Category](categoryid),
 size VARCHAR(40) NOT NULL,
 stock INT NOT NULL, 
 [description] NVARCHAR(max),
 [images] VARCHAR(255) NOT NULL,
 [colors] NVARCHAR(255) NOT NULL,
 releasedate  DATE NOT NULL,
 discount FLOAT,
 unitSold INT,
 price INT NOT NULL
)

-- DROP TABLE Products

CREATE TABLE Cart (
cartid INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
quantity INT,
username VARCHAR(30) FOREIGN KEY REFERENCES  Users(username),
productid INT FOREIGN KEY REFERENCES [dbo].[Products]([id])
)
--DROP TABLE Cart

CREATE TABLE WishList( 
wishListid INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
username VARCHAR(30) FOREIGN KEY REFERENCES  Users(username),
productid INT FOREIGN KEY REFERENCES [dbo].[Products]([id]),
)
-- DROP TABLE WishList
CREATE TABLE Payment(
paymentid INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
payment_method VARCHAR(30)
)
-- DROP TABLE Payment

CREATE TABLE Shipment(
shipment_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
shipment_DATE DATETIME,
username VARCHAR(30) FOREIGN KEY REFERENCES [dbo].[Users](username),
address NVARCHAR(255),
zip_code VARCHAR(100),
)
-- DROP TABLE Shipment

CREATE TABLE [Order](
order_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
orderdate DATETIME,
totalprice DECIMAL(10,2),
paymentid INT NOT NULL FOREIGN KEY REFERENCES Payment(paymentid) ,
shipmentid INT NOT NULL FOREIGN KEY REFERENCES Shipment(shipment_id) ,
username VARCHAR(30) NOT NULL FOREIGN KEY REFERENCES Users([username]),
status bit NOT NULL,
)
--DROP TABLE Order


CREATE TABLE Wallets (
    walletid INT IDENTITY(1,1),
	username VARCHAR(30),
    balance DECIMAL(10, 2),
	CONSTRAINT [PK_Wallets] PRIMARY KEY (walletid),
	CONSTRAINT [FK_Wallets_Users] FOREIGN KEY (username)
	REFERENCES [dbo].[Users](username)
)
--DROP TABLE Wallets

CREATE TABLE OrderItem(
order_item_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
quantity INT ,
price DECIMAL(10,2),
prodct_id INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Products]([id]),
order_id INT NOT NULL FOREIGN KEY REFERENCES  [dbo].[Order](order_id)
)
--DROP TABLE OrderItem
