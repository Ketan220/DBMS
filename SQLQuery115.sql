select * from product

create procedure prod2
as
begin
select *from product
end;

exec prod2

----Modifying a stored procedure
alter procedure prod2
as
begin 
select productname,price from product
order by price
end;

exec  prod2

--Deleting a stored procedure
drop procedure prod2
