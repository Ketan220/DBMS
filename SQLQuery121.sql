/*Creating a stored procedure with multiple parameters
Stored procedures can take one or more parameters. The parameters are separated by commas.*/
create procedure prod7(@minprice as decimal,@maxprice as decimal,@pn varchar(20))
as
begin
select* from product
where price>@minprice and price<@maxprice and 
productname like '%'+@pn+'%'
order by price,productname
end;


exec prod7 @minprice=120,@maxprice=500,@pn='key';
exec prod7 @minprice=120,@maxprice=500,@pn='board';
exec prod7 @minprice=120,@maxprice=500,@pn='yb';
exec prod7 @minprice=120,@maxprice=500,@pn='ouse';


