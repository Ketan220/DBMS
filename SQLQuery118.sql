create procedure prod4(@pn as varchar(20),@p as decimal)
as
begin
select * from product
where productname=@pn and price=@p
order by productname,price
end;

exec prod4 @pn='mouse', @p=120;

exec prod4 @pn='keyboard', @p=250;
