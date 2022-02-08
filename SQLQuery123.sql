--Using NULL as the default value
create proc prod9(@minp as decimal=100,@maxp as decimal=null,@pn as varchar(max))
as
begin
select * from product
where
price >= @minp AND
        (@maxp IS NULL OR price <= @maxp) AND
        productname LIKE '%' + @pn + '%'
end;

exec prod9 120,200,'mouse'
exec prod9 120,200,'mouse'
exec prod9 @minp=100,@pn='e'

