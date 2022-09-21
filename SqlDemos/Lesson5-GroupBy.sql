Create database ProductDB
go

use ProductDB
go

Create table Product(
Id int primary key identity(1,1),
ProductName varchar(20) not null,
ProductPrice int not null,
ProductOrigin varchar(20) not null
)

go

insert into Product
values('iPhone',100000,'USA'),
('Samsung',75000,'Korea'),
('iPad',92000,'USA'),
('OnePlus',55000,'China'),
('MI',37000,'China')

go

select * from Product

--All products from USA
select * from Product where ProductOrigin='USA'


--USA 192000
--Korea 75000
--China 92000

select sum(ProductPrice) from Product

-- Sum of productprice by productorigin
select  ProductOrigin,sum(ProductPrice) from Product 
group by ProductOrigin
order by ProductOrigin desc

-- query for total number of products by productorigin
select  ProductOrigin,count(ProductOrigin) as TotalProductsByCountry from Product 
group by ProductOrigin
order by ProductOrigin desc
