/*ON DELETE SET NULL: SQL Server sets the rows in the child table to NULL if the corresponding rows in the 
parent table are deleted. To execute this action, the foreign key columns must be nullable.*/
drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100),
        group_id INT ,
        constraint fk3  foreign key(group_id)
        references vendor_groups(group_id)
        on delete set null
        )
     
insert into vendors values('amitabh',2)
delete from vendor_groups where group_id=2
select * from vendor_groups
select * from vendors
