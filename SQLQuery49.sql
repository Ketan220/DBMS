/*ON UPDATE CASCADE: SQL Server updates the corresponding rows in the child table when the rows in the 
parent table are updated.*/
drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        constraint kb  foreign key(group_id)
        references vendor_groups(group_id)
        on update cascade
        
        )
       
        insert into vendor_groups values('raisonic')
        select * from vendor_groups
        select * from vendors
        insert into vendors values('amit',4)
         select * from vendors
   select * from vendor_groups
   update vendor_groups set group_name='ketan' where group_id=4
   select * from vendor_groups
   select * from vendors
