select * from salesman1

alter table salesman1
add  salary int,designation varchar(20);
insert into salesman1 (designation,salary)
values
('employee',2000),
('hr',5000),
('manager',7000),
('cr',10000),
('manager',13000),
( 'sir',12400),
('madum',18000);

--8 - create a sp to get records from emp table whose salary is greater than 20000 and salary is less than 
create procedure s9
as
begin
select * from salesman1
where salary>10000 and salary<20000
end;

exec s9
