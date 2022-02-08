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

--5 - create a sp to get records from sales table whose saleamount >1000 and saleamount<10000
create procedure s6
as
begin
select * from salesman1
where salary>1000 and salary<10000
end;

exec s6
