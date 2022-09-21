create database Query
go
use Query
go
 create table Country(
 Id int primary key identity(1,1),
 CountryName varchar(30) 
 )

 go
 insert into Country values
 ('USA'),
 ('India'),
 ('UK'),
 ('Australia')
 go
Create table Customer1
(
Id int primary key identity(1,1),
CustomerName varchar(20),
CountryId int Foreign Key References Country(Id)
)

go
insert into Customer1 values('Rick',3)
insert into Customer1 values('Bhushan',4)
insert into Customer1 values('Thim',6)
insert into Customer1 values('John',8)
insert into Customer1 values('Namodh',null)

go


select * from Country
select * from Customer1
