
create database KeysightCartDB
go
use KeysightCartDB
go

create table Product
(
Identifier int primary key identity,
Name varchar(50),
Description varchar(100),
Price float,
Stock_Quantity int)
go
insert into Product(Name, Description,Price,Stock_Quantity) values
('Angular Ready','book about Angular',20.2,100),
('TypeScript in Action','Book about TypeScript',32.27,100),
('Asp.net Core jump start','Book about asp.net core',50.2,100),
('Docker for dummies','Book about docker',15.6,2)
go

create table Orders
(
Identifier int primary key identity,
Order_Date datetime,
Total float)
go

create table OrdersList
(
Identifier int primary key identity,
Order_ID int,
Product_ID int,
Product_Quantity int,
Product_Total float,
foreign key(Order_ID) references Orders,
foreign key(Product_ID) references Product
)
go
