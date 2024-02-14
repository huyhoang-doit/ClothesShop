create database Clothes_shop

use Clothes_shop

create table Type (
nameType nvarchar(50),
idType int not null primary key
)

create table Products(
idProducts int  not null primary key,
nameProducts varchar(255),
discription nvarchar(max),
price decimal(10,2),
stockquantity int,
idType int,
constraint fk_Products_idType foreign key (idType) references Type(idType)
)
create table Customers(
idCustomers int identity (1,1) not null primary key,
name nvarchar(100),
phone varchar(20),
email varchar(100),
address nvarchar(255),
password varchar(50)
)
create table Orders(
idOrders int not null primary key,
idCustomers int,
dateOrders date,
totalamount decimal(10,2),
constraint fk_Orders_idCustomers foreign key (idCustomers) references Customers(idCustomers)
)
create table Warehouse(
quantity int,
idCustomers int,
idProducts int,
constraint fk_Warehouse_idCustomers foreign key (idCustomers) references Customers(idCustomers),
constraint fk_Warehouse_idProducts foreign key (idProducts) references Products(idProducts),
)
create table OrderDetails(
idOrderDetails int not null primary key,
quantiyOrders int,
unitPrice decimal(10,2),
idOrders int,
idProducts int,
constraint fk_OrderDetails_idProducts foreign key (idProducts) references Products(idProducts),
constraint fk_OrderDetails_idOrders foreign key (idOrders) references Orders(idOrders),
)
