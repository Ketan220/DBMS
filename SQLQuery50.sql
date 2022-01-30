/*    ON UPDATE SET NULL: SQL Server sets the rows in the child table to NULL when the corresponding row 
in the parent table is updated. Note that the foreign key columns must be nullable for this action to execute.*/
drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT ,
        constraint bk  foreign key(group_id)
        references vendor_groups(group_id)
        on update set null
        
        )
       
        insert into vendors values('amitabh',4)
		insert into vendors values('amit',5)
        update vendor_groups set  where group_id=5
        select * from vendor_groups
        select * from vendors
