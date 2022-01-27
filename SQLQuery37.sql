/*When you use more than one logical operator in an expression, SQL Server always evaluates the AND operators first. However,
you can change the order of evaluation by using parentheses.*/
select * from pro 
where id=1 and price>4 or qty=4
order by PRICE DESC;

select*from pro
