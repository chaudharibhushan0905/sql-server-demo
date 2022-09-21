create database PoroductDB
go
use ProductDB
go

create table Product(
id int primary key,
ProductName varchar(20),
price int,
quantity int
);

insert into Product values (1,'Mobile',75000,2)
insert into Product values (2,'Keyboard',5000,20)
insert into Product values (3,'Mouse',2000,10)

select * from Product

Begin Transaction
insert into Product values 
(4,'Laptop',75000,4)

insert into Product values 
(5,'Abcdefghjhkjkjkjkjkjklhkxhckljckljcklasjcklajcklajckljcklacj',42000,5)

if(@@ERROR >0) -- If there is any error in the transaction then rollback the transaction.

Begin
Rollback Transaction
End

Else

Begin 
Commit Transaction
End
