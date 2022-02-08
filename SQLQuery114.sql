select * from product

create procedure prod1
as
begin
select *from product
end;

exec prod1

----Modifying a stored procedure
alter procedure prod1
as
begin 
select productname,price from product
order by price
end;

exec  prod1

