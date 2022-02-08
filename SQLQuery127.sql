--7 - create a sp to get records from student and marks table using inner join
create table student2(id int identity primary key,sp_name varchar(20),marks int)
insert into student2(sp_name ,marks )
values('ketan',230),
('Haris',380),
('peter', 450),
('Marco',390);

create procedure s5
as
begin
select * from student1
inner join student2
on student1.id=student2.id
end;

exec s5

