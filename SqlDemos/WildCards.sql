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
values('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constituci?n 2222','M?xico D.F.','05021','Mexico')
insert into customer1
values('Antonio Moreno Taquer?a','Antonio Moreno','Mataderos 2312','M?xico D.F.','05023','Mexico')
insert into customer1
values('Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK')
insert into customer1
values('Berglunds snabbk?p','Christina Berglund','Berguvsv?gen 8','Lule?','S-958 22','Sweden')
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
go

--WHERE -

--selects all the customers from the country "Mexico", in the "Customers" table
SELECT * FROM customer1
WHERE Country='Mexico';

--OerderBy-

--selects all customers from the "Customers" table, sorted by the "Country" column
SELECT * FROM customer1
ORDER BY Country;

--selects all customers from the "Customers" table, sorted DESCENDING by the "Country" column
SELECT * FROM customer1
ORDER BY Country DESC;

-- selects all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column. This means that it orders by Country, but if some rows have the same Country, it orders them by CustomerName
SELECT * FROM customer1
ORDER BY Country, CustomerName;

-- selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column
SELECT * FROM customer1
ORDER BY Country ASC, CustomerName DESC;


--UPDATE-updates the first customer (CustomerID = 1) with a new contact person and a new city
UPDATE customer1
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

select * from customer1

--update the ContactName to "Juan" for all records where country is "Mexico":
UPDATE customer1
SET ContactName='Juan'
WHERE Country='Mexico';

--ALL records will be updated
UPDATE customer1
SET ContactName='Juan';

--DELETE-deletes the customer "Alfreds Futterkiste" from the "Customers" table
DELETE FROM customer1 WHERE CustomerName='Alfreds Futterkiste';

DELETE FROM customer1;

select * from customer1

--WildCards-selects all customers with a City starting with "L"
SELECT * FROM customer1
WHERE City LIKE 'L%';

--selects all customers with a City ending with "F."
SELECT * FROM customer1
WHERE City LIKE '%F.';

--selects all customers with a City starting with any character, followed by "ondon"
SELECT * FROM customer1
WHERE City LIKE '_ondon';

