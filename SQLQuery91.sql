/* Self Join
In this example, we have used the id and city column as a join condition to get the data from both tables.*/

SELECT S1.custname, S2.state, S2.city  
    FROM product S1, product S2  
    WHERE S1.custid <> S2.custiD AND S1.city = S2.city  
    ORDER BY S2.city;  

select * from Product