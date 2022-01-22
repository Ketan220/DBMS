--8- create a table users having columsn userid, username, password1,emailid,gender,city,country
create table users (userid int primary key,username varchar(20),password int,emailid varchar(20),
gender varchar(10),city varchar(10),country varchar(10))

--9- insert 10 records of different users
insert into users values(1,'ketan',1234,'ketanbhange1gmialcom','male','Nagpur','India')
insert into users values(2,'Bhavesh',2434,'bhaveshbhange','male','Bhandara','India')
insert into users values(3,'Sanskruti',3445,'sansbalbudhe','Female','Chandrapur','India')
insert into users values(4,'Muzahid',2456,'muzahidkhan','Male','Nashik','India')
insert into users values(5,'Mayuri',22657,'mayurimeshram','Female','Nanded','India')
insert into users values(6,'Gaurav',379775,'gauravthembhare','Male','Goa','India')
insert into users values(7,'paritosh',45678,'paritoshthakare','Male','Amravati','India')
insert into users values(8,'Vishal',8565,'vishalbhjankar','Male','Umred','India')
insert into users values(9,'Rohini',46789,'mahkalkarrohini','Female','chimur','India')
insert into users values(10,'Lakxmi',895668,'lakxmishrivastav','Female','Akola','India')

--10 -view all records
select*from users
