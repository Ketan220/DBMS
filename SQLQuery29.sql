--The following example uses a constant value to return the top 2 most expensive products.
select Top 50 percent
proname,price 
from pro
order by price desc


