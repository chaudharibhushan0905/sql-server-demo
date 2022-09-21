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

 insert into Country values ('South Africa')

 select * from Country
 go

Create table Customer
(
Id int primary key identity(1,1),
CustomerName varchar(20),
CountryId int Foreign Key References Country(Id)
)

go
insert into Customer values('Rick',3)

insert into Customer values('Namodh',null)

go


select * from Country
select * from Customer


select Customer.Id,Customer.CustomerName,Country.CountryName from Customer 
inner join Country 
on Customer.CountryId = Country.Id

--Aliasing tables and joining

select * from Customer

select CS.Id,CS.CustomerName,CR.CountryName from Customer CS
inner join Country CR
on CS.CountryId = CR.Id

--full join

select CS.Id,CS.CustomerName,CR.CountryName from Customer CS
 full outer join Country CR
on CS.CountryId = CR.Id
