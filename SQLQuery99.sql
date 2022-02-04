select * from customer1
 
create table orders (orderid int , custid int, orderdate date,
productname varchar(20),qty int)
insert into orders values(1,1,'2022-2-2','mouse',5)
insert into orders values(1,1,'2022-2-2','keyboard',5)
insert into orders values(2,2,'2022-2-2','desktop',5)
insert into orders values(2,2,'2022-2-2','ram',5)
insert into orders values(3,3,'2022-2-2','laptop',5)
insert into orders values(4,3,'2022-1-2','mouse',5)
insert into orders values(5,4,'2022-2-2','mouse',5)
insert into orders values(6,4,'2022-2-2','ram',5)
insert into orders values(7,5,'2022-2-2','desktop',5)
insert into orders values(7,5,'2022-2-2','ram',5)
select * from orders

select * from customer1
select custid from customer1 where city='nagpur'
select * from orders

select * from customer1
select orderid,custid,orderdate,productname,qty from orders
where custid in(select custid from  customer1 where city='nagpur')

select orderid,custid,orderdate,productname,qty from orders
where custid in(select custid from  customer1 where city='bhopal')

select orderid,custid,orderdate,productname,qty from orders
where custid in(select custid from  customer1 where city='indore')