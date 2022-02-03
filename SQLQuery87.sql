/*display the records from customer and orders table using right outer join*/
create table customer (custid int,custname varchar(30),telno int)

create table orders (orderid int,orderdate int,custid int,prodname varchar(30),qty int,rate int,)

insert into customer values (123,'rishi',90876467)
insert into customer values (23,'ketan',85856868)
insert into customer values (24,'bhavesh',56868788)
insert into customer values(266,'sans',7689890)
insert into customer values(077,'kb',4895856)


insert into orders values (1,22092022,23,'Mouse',8,1500)
insert into orders values (2,09112020,45,'Keyboard',5,2000)
insert into orders values (3,12092019,266,'cpu',2,4000)
insert into orders values (4,12072016,45,'desktop',2,4435)

select customer.custid,customer.custname,customer.telno,orders.orderdate,orders.prodname from customer 
right outer join orders
on customer.custid=orders.custid



