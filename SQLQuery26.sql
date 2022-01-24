/*The LEN() function returns the number of characters of a string. The following statement uses the LEN() 
function in the ORDER BY clause to retrieve a customer list sorted by the length of the first name.*/

select first_name  from customer order by LEN(first_name)

