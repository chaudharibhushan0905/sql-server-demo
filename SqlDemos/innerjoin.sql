create database Qyery1
go
use Qyery1
go

create table Person1(
PersonID int primary key identity(1,1),
LastName varchar(30) not null,
FirstName varchar(30) not null,
Age int not null
);
go
insert into Person1
values('Hansen','Ola',30)
insert into Person1
values('Svendson','Tove',23)
insert into Person1
values('Pettersen','Kari',20)
go
select * from Person1
go
create table Orders (
    OrderID int NOT NULL primary key,
    OrderNumber int NOT NULL,
    PersonID int foreign key references Person1(PersonID)
);	

go

insert into Orders
values(1,77895,3)
go
insert into Orders
values(2,44678,3)
insert into Orders
values(3,22456,2)
insert into Orders
values(4,24562,1)
go
select * from Orders

select * from Orders
join Person1
on Person1.PersonID =Orders.OrderID

select OT.PersonID, OT.OrderID, p.FirstName from Orders OT
inner join Person1 p
on P.PersonID = OT.OrderID