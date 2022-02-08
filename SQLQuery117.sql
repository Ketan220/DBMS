--procedure to find those products whose product name is supplied
create procedure prod3(@pname as varchar(20))
as
begin
select * from product
where productname=@pname
order by productname;
end;

exec prod3 @pname='mouse' 
exec prod3 @pname='keyboard'