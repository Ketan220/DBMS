/*6 . From the following table, write a SQL query to find those customers whose grade is 200. 
Return customer_id, cust_name, city, grade, salesman_id.*/
create table customers( customer_id int,cust_name varchar(20),city varchar(10),grade int,salesman_id int)
insert into customers values(3002,' Nick Rimando' , 'New York ' , 100 ,5001)
insert into customers values(3007 ,' Brad Davis ' ,'New York ', 200 ,5001)
insert into customers values( 300,'Graham Zusi','California',200 ,5002)
insert into customers values (3008 ,'Julian Green' ,' London' ,300 , 5002)
insert into customers values(3004,' Fabian Johnson','Paris' , 300 ,5006)
insert into customers values(3009 ,'Geoff Cameron',' Berlin ', 100 ,5003)
insert into customers values( 3003,'Jozy Altidor ', 'Moscow ' , 200, 5007)

select*from customers where grade=200
