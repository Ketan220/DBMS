select *from product

create view p1 as
select productname,price from product where price>=250

select * from p1
