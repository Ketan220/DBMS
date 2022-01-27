insert into stores(store_name,phone,email,street,city,state,zip_code) 
values ('ketan','7878549834','ketan@gmail.com','nandanwan','nagpur','maharashtra','440001')

insert into stores(store_name,phone,email,street,city,state,zip_code)
values ('mana','1234567890','mana@gmail.com','sadar','nagpur','maharastra','440001')

insert into stores(store_name,phone,email,street,city,state,zip_code)
values ('dhanush','2234567890','d@gmail.com','manewada','nagpur','maharastra','440001')

insert into stores(store_name,phone,email,street,city,state,zip_code)
values ('bhavesh','784578326790','bhavesh@gmail.com','bardi','nagpur','maharastra','440001')

select * from stores

--not insert not null in stores_name
insert into stores(phone,email) values('3222','ab@gmail.com')

insert into stores(store_name,phone,email) values('radha','3222','ab@gmail.com')