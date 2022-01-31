--Foreign key example
create table department (department_id int identity primary key,department_name varchar(50))

create table employee (emp_id int identity primary key,
emp_name varchar(50) , department_id int ,
constraint e1 foreign key (department_id)
references department(department_id))

insert into department values('purchase')
insert into employee values('amit',1)

select*from department
select*from employee

