/*Creating optional parameters*/
create procedure prod8(@minprice as decimal=100,@maxprice as decimal=1000,@pn varchar(20))
as
begin
select* from product
where price>@minprice and price<@maxprice and 
productname like '%'+@pn+'%'
order by price,productname
end;


exec prod8 @minprice=120,@maxprice=500,@pn='key';
exec prod8 @minprice=230,@pn='key';
exec prod8 @maxprice=300,@pn='mouse'



