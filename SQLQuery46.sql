/*    ON DELETE CASCADE: SQL Server deletes the rows in the child table that is corresponding to the row deleted
from the parent table.*/
drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        constraint fk2  foreign key(group_id)
        references vendor_groups(group_id)
        on delete cascade
        
        )

insert into vendors values('amit',1)
select * from vendor_groups
select * from vendors
delete from vendor_groups where group_id=1
select * from vendor_groups
select * from vendors
