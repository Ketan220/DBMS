/*Table brands
The  production.brands table stores the brand’s information of bikes, for example, Electra, Haro, and Heller.*/
CREATE TABLE brands (
	brand_id INT IDENTITY (1, 1) PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);

insert into brands values('hero')
insert into brands values('bajaj')
insert into brands values('honda')
insert into brands values('yamaha')
insert into brands values('ktm')
select * from brands

