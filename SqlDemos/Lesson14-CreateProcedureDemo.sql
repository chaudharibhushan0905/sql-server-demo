select * from country
select * from Customer

go

create procedure sp_GetAllCustomerWithCountryName
as
Begin

select Customer.Id,Customer.CustomerName,Country.CountryName from Customer 
inner join Country
on Customer.CountryId = Country.Id

End

go

exec sp_GetAllCustomerWithCountryName

go

sp_helpText 'sp_GetAllCustomerWithCountryName'
