select * from Customer1
select * from Product1
go

create procedure sp_GetAllCustomers
as
Begin
Select * from Customer1
End

go 

exec sp_GetAllCustomers
execute sp_GetAllCustomers

go

Alter procedure sp_GetAllCustomers
as 
Begin
select CustomerID,CustomerName from customer1
End

go
exec sp_GetAllCustomers