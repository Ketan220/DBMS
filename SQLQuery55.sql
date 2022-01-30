/*Table ustomers
The  sales.customers table stores customer’s information including first name, last name, phone, email, 
street, city, state and zip code.*/
CREATE TABLE customers (
	customer_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (6)
);

insert into customers 
values('ram','khadgi','783854858','khadgiram@gmail.com','vardhaman nagar','nagpur','mahrashtra','440021') 
insert into customers 
values('ankush','bhange','548584455','ankushb45@gmail.com','ravi nagar','nagpur','mahrashtra','440021') 
insert into customers 
values('ravi','dhage','7548583232','dhage1234@gmail.com','bharat nagar','nagpur','mahrashtra','440021') 
insert into customers 
values('krunal','mankade','213854858','krunal1@gmail.com','ganesh nagar','nagpur','mahrashtra','440021') 
insert into customers 
values('rohit','golte','908754858','rohit2002@gmail.com','chadramani nagar','nagpur','mahrashtra','440021') 

select *from customers