/*Creating a stored procedure with one parameter
The following query returns a product list from the products table in the sample database:*/
create procedure prod2(@minprice as decimal)
as
begin
select * from product
where price>@minprice
order by price
end;

exec prod2 @minprice=120;

exec prod2 @minprice=250;



