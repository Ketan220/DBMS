select * from customer
select * from orders

create procedure s4
as
begin
select * from customer
inner join orders
on customer.custid=orders.custid
end;

exec s4