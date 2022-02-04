create table product(productid int,productname varchar(20),price int,qty int)

insert into product values(1,'mouse',120,7),
(2,'keyboard',220,7),
(3,'desktop',12200,7),
(4,'cpu',1300,2),
(2,'keyboard',250,7),
(1,'mouse',500,7);

select * from product

select productname,count(price) 'total count' from product
group by productname
having min(qty)>=2


