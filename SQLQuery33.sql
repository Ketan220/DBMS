--SQL Server WHERE - match two conditions
-- Finding rows by using a comparison operator
--Note that the OR operator combined the predicates.
select custid,custname from product
where custid>3 or custname='amit' 

