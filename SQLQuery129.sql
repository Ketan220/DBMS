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

--6 - create a sp to get records from emp table whose designation is 'manager' and salary >20000
create procedure s7
as
begin
select * from salesman1
where designation='manager' and salary<10000
end;

exec s7
