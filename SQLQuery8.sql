-- 2)create a table student having columns rno,name,address,mobno
create table student (rno int primary key, Name varchar(10),Address varchar(20),Mobno int)

--3) insert at least 10 records into student table
insert into student values(1,'Gaurav','Chandramani Nagar',787899798)
insert into student values(2,'Bhavesh','Ganesh Nagar',94935749)
insert into student values(3,'Nayan','Gorewada Lake',69865979)
insert into student values(4,'Nidhi','rameshwari',5965943)
insert into student values(5,'Vishal','Bajrang Nagar',3984794)
insert into student values(6,'Vinayal','Polic nagar',94754487)
insert into student values(7,'Babu','Nandanwan',784466)
insert into student values(8,'Syali','Guruev Nagar',438549)
insert into student values(9,'Sans','Old Nandanwan',3856454)
insert into student values(10,'Rohit','Dighori',3785687)

--4- write a query to view all records
select*from student
