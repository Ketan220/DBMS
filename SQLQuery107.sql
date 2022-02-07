select * from customer1
select * from orders

create view p3 as
select  customer1.custid,customer1.custname,orders.productname  from customer1
inner join orders
on customer1.custid=orders.custid;

select*from p3


