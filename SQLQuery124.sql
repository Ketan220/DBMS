--2- create a sp named s2 to get records from student table whose city='nagpur'
create procedure s2
as
begin
select * from students
where city='nagpur'
end;

exec s2

