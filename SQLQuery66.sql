--CHECK constraint referring to multiple columns
create table productss3(
product_id int identity primary key,
product_name varchar(25) NOT  NULL,
unit_price dec(10,2) check (unit_price>0),
discounted_price dec(10,0) check (discounted_price>0),
check (discounted_price<unit_price)
);
insert into productss3 values('mouse',120,56)
insert into productss3 values('mouse',0,0)
insert into productss3 values('mouse',120,220)
select*from productss3
