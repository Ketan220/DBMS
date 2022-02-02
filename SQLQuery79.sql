/*5-From the following table, write a SQL query to find the salespeople who lives in the City of 'Paris'. 
Return salesperson's name, city.*/
 
create table salesman ( salesman_id int primary key,name varchar(20),city varchar(20),commission dec(10,2))

insert into salesman values (5001,'James Hoog','New York',0.15)
insert into salesman values(5002,'Nail Knite','Paris',0.13)
insert into salesman values(5005,'Pit Alex ', 'London', 0.11)
insert into salesman values( 5006,' Mc Lyon', 'Paris', 0.14)
insert into salesman values(  5007,'Paul Adam', 'Rome', 0.13)
insert into salesman values(  5008 , 'Lauson Hen',' San Jose ', 0.13)

select name,city from salesman where city='paris' 




--2 Write a SQL statement to display specific columns like name and commission for all the salesmen.    
select name,commission  from  salesman

