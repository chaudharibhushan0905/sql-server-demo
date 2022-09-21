create database CustomerDB1

use CustomerDB1
go

--drop table Customer

create table Customer1(
Id int,
FirstName varchar(10),
LastName varchar(10),
Age int
)

Alter table Customer1
Add Salary int

-- Read data from customer table

select * from Customer1

-- Read sepecific column

select Id,FirstName from Customer1

--Insert records to customer table

insert into Customer1 (Id,FirstName,LastName,Age,Salary)
values(1,'James','Bond',40,30000)

insert into Customer1
values(2,'Tina','Mariam',25,18000)

insert into Customer1(Id)
values(3)

insert into Customer1
values(2,'John','Robert',25,54000)

--Filter records

select * from Customer1 where Salary>20000

select * from Customer1 where Salary >20000 and Age<30

select * from Customer1

select MAX(Salary) as [Maximum Salary] from Customer1

select Min(Salary) as [Minimum Salary] from Customer1

select COUNT(*) as [Total Customers] from Customer1

select COUNT(1) as [Total Customers] from Customer1

select SUM(Salary) as [Total Salary] from Customer1
