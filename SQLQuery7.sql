--Use of Primary key
create table customer (custid int primary key,name varchar(20))
insert into customer values (1,'Krunal')
select*from customer

insert into customer values (1,'Krunal')
--Now error will come due to primary key

insert into customer values(2,'krunal')
select*from customer