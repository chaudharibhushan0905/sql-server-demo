-- Creating a Databse Name StudentDB
create database StudentDB
go
-- Accessing Database StudentDB
use StudentDB
go
--  Creating a table inside Database
create table Student(
Id int UNIQUE IDENTITY (1000,5),
Name varchar(20),
Gender varchar(10),
Mark int CHECK (Mark > 0 And Mark <=100)
);
go
--1. Insert the above records into student table
insert into Student
values('John','Male',80)
insert into Student
values('Jessie','Female',92)
insert into Student
values('Tina','Female',75)
insert into Student
values('Thomas','Male',65)
insert into Student
values('Johson','Male',45)
insert into Student
values('Riya','Female',50)
go
--2.select all student records
select * from Student
go
--3.select all male student records
Select * from Student 
where Gender= 'Male'
go
--4.select all Female student records
Select * from Student 
where Gender= 'Female'
go
--5.select all records with mark>45
select * from Student 
where Mark>45
go
--6.select all records whoose name start with 'j'
select * from   Student
WHERE Name LIKE 'j%';
go
--7.select all records whoose name end with 'a'
select * from Student
WHERE Name LIKE '%a';
go
--8.Write a query to get total mark by gender
select Gender, sum(Mark) as TotalMark from Student 
group by Gender
go
--9.Write a query to get total Student by gender
select Gender, Count(id) as TotalStudent from Student 
group by Gender
go
--10. .Write a query to get total Student by gender with mark>70
select Gender, Count(id) as TotalStudent from Student 
where Mark>70
group by Gender

