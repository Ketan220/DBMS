--2NF Example
create table teacher_detail (teacher_id int primary key,teacher_age int)

create table teacher_subject(teacher_id int,subject varchar(20),
constraint t1 foreign key(teacher_id) references teacher_detail (teacher_id))

insert into teacher_detail values(111,30)
insert into teacher_detail values(123,35)
insert into teacher_detail values(007,40)



insert into teacher_subject values(111,'chemistry')
insert into teacher_subject values(111,'Biology')
insert into teacher_subject values(123,'English')
insert into teacher_subject values(007,'math')
insert into teacher_subject values(007,'computer')

select *from teacher_detail
select * from teacher_subject



