create table students (rno int,courseid int,name varchar(20),email varchar(30),city varchar(20))
insert into students values (1,1,'ketan','ketan1@gmail.com','nagpur')
insert into students values (2,2,'bhavesh','bhavesh12@gmail.com','nagpur')
insert into students values (3,3,'kamlesh','kamleshlkan12@gmail.com','mumbai')
insert into students values (4,4,'varsha','abc@gmail.com','mumbai')
insert into students values (5,5,'vedang','vedang@gmail.com','mumbai')
insert into students values (6,6,'muzahid','muzahid08@gmail.com','delhi')
insert into students values (7,7, 'ashish','ashish01@gmail.com','delhi')
select*from students

create table fees (feesid int,rno int,feesdate date,amount dec(10,2),courseid int)
insert into fees values (1,1,'01-09-2020',12000,1)
insert into fees values (1,1,'01-09-2020',17000,1)
insert into fees values (2,2,'09-05-2019',15000,2)
insert into fees values (2,2,'09-05-2019',27000,2)
insert into fees values (3,3,'16-09-2022',23000,3)
insert into fees values (3,3,'12-03-2018',13000,3)
insert into fees values (4,4,'12-03-2018',13000,4)
insert into fees values (5,4,'12-03-2018',13000,4)
insert into fees values (4,4,'12-03-2018',90000,6)
insert into fees values (4,4,'12-03-2018',13000,6)

select feesid,courseid,rno,feesdate,amount from fees
where courseid in(select courseid from  students where city='nagpur')

select feesid,courseid,rno,feesdate,amount from fees
where courseid in(select courseid from  students where city='mumbai')


select feesid,courseid,rno,feesdate,amount from fees
where courseid in(select courseid from  students where city='delhi')