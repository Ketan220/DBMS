/*The categories table stores the bike’s categories such as children bicycles,
comfort bicycles, and electric bikes.*/
CREATE TABLE categories (
	category_id INT IDENTITY (1, 1) PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
)

insert into categories values('ketan')
insert into categories values('vedang')
insert into categories values('upen')
insert into categories values('ravindra')
insert into categories values('bhavna')
insert into categories values('sangita')

select*from categories