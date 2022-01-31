--3NF
create table teachers(teacher_id int primary key,teacher_name
varchar(20),country varchar(20),city varchar(20), state varchar(20))
insert into teachers values(1,'stephan','india','nagpur','mah')
insert into teachers values(2,'morris','india','nagpur','mah')
insert into teachers values(3,'daniel','india','nagpur','mah')
insert into teachers values(4,'fransis','india','mumbai','mah')
select * from teachers

