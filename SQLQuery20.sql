--E) SQL Server SELECT – filter groups example

/*--To filter groups based on one or more conditions, you use the HAVING clause. The following example returns 
the city in mp which has more than 1 product  */

--Having clause
 select city, count(*) from product
 where state='mp'
 group by city
 having count(*)>=1
 order by city

