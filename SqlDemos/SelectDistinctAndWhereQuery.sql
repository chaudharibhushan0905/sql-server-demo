create database CustomerDB1
go
use CustomerDB1
go

create table customer1(
CustomerID int primary key identity(11,1),
CustomerName varchar(50) not null,
ContactName	varchar(50) not null,
Address	varchar(50) not null,
City varchar(50) not null,
PostalCode	varchar(50) not null,
Country varchar(50) not null
);
go
insert into customer1
values('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany')
insert into customer1
values('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico')
insert into customer1
values('Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico')
insert into customer1
values('Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK')
insert into customer1
values('Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden')
go
--select all record
select * from customer1;
go
--selects the "CustomerName" and "City" columns from the "Customers" table
SELECT CustomerName, City FROM customer1;

--DISTINCT -selects all (including the duplicates) values from the "Country" column in the "Customers" table
SELECT Country FROM customer1;
--selects only the DISTINCT values from the "Country" column in the "Customers" table
SELECT DISTINCT Country FROM customer1;
--lists the number of different (distinct) customer countries
SELECT COUNT(DISTINCT Country) FROM customer1;

