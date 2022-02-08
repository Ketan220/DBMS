/*Creating a stored procedure with multiple parameters
Stored procedures can take one or more parameters. The parameters are separated by commas.*/
create procedure prod6(@minprice as decimal,@maxprice as decimal,@pn varchar(20))
as
begin
select* from product
where price>@minprice and price<@maxprice and productname=@pn
order by price,productname
end;


exec prod6 @minprice=120,@maxprice=500,@pn='keyboard';


