--sql index
select * from student

create index index_age on student(age);

select age from student where age>15
