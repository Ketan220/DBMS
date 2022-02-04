drop table student1
create table student1(feesid int,courseid int,name varchar (10),course varchar(20),feesdate date,amount dec(10,2))
insert into student1 values (1,1,'ketan','java','01-09-2020',12000)
insert into student1 values (1,2,'bhavesh','java','01-09-2020',12000)
insert into student1 values (2,3,'vedang','java','07-09-2021',12000)
insert into student1 values (2,4,'upen','java','07-09-2021',12000)

drop table courses
create table courses( courseid int, coursename varchar(10),fees int , duration int)
insert into courses values(1,'java',10000,3) 
insert into courses values(2,'java',10000,3) 
insert into courses values(2,'dotnet',10000,3) 

select * from courses
where courseid in(select courseid from  student1 where course='java')