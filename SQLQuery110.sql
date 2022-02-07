create table customer1(custid int,custname varchar(20),productname varchar(20),price int)

insert into customer1 (custid ,custname ,productname ,price)
values (1,'ketan','pen', 200),
(2,'bhavesh','book',300),
(3,'sand','thesis',1500),
(4,'vedang','rubber',5),
(5,'sayali', 'pendrive', 350),
(6, 'arya','hard disk',5000);
select * from customer1

DECLARE 
@cust_id VARCHAR(MAX),
@cust_price decimal;


DECLARE cursor_customer1 cursor
for select
custname,price
from customer1;

open cursor_customer1;

WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT @cust_id+ CAST(@cust_price AS varchar);
        FETCH NEXT FROM cursor_customer1 INTO 
            @cust_id, 
            @cust_price;
    END;

	close cursor_customer1;
	deallocate cursor_customer1;

