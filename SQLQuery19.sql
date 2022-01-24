 --sql server select - group by clause

/*In this case, SQL Server processes the clauses in the following sequence: FROM, WHERE, GROUP BY, SELECT, and
ORDER BY.*/

 /*For example, the following statement returns all the cities of customers located in mp and 
 the number of customers in each city. */
 select city, count(*) from product
 where state='mp'
 group by city
 order by city