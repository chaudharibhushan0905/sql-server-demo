CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

insert into Persons
values(1,'Chaudhari','Bhushan',24)
insert into Persons
values(2,'Chaudhari','Bhushan',24)

select * from Persons

update Persons 
set LastName='LN',FirstName='FN'
where ID=1;

delete from Persons

CREATE TABLE PersonwithMulticolumnPrimaryKey(
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_PersonwithMulticolumnPrimaryKey PRIMARY KEY (ID,LastName)
);

insert into PersonwithMulticolumnPrimaryKey
values(1,'C','Bhushan',23)
insert into PersonwithMulticolumnPrimaryKey
values(2,'C','Bhushan',23)

select * from PersonwithMulticolumnPrimaryKey