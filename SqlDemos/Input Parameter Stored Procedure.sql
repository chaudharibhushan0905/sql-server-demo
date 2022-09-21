select * from Country
select * from Customer where id=2

go

create procedure sp_GetCustomersById
@id int
as
Begin
select * from Customer where Id=@id
End

go

exec sp_GetCustomersById 4

go


create procedure sp_GetCustomersByCountryName
@countryName varchar(20)
as
Begin
select Customer.Id,Customer.CustomerName,Country.CountryName  from Customer 
inner join Country
on Customer.CountryId = Country.Id
where Country.CountryName = @countryName
End

go

exec sp_GetCustomersByCountryName 'India'
