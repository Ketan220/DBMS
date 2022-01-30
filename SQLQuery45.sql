/*On Delete No Action:-SQL Server raises an error and rolls back the delete action on the row in
the parent table*/
drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        constraint fk1  foreign key(group_id)
        references vendor_groups(group_id)
        on delete no action
        
        )
insert into vendors values('amit',1)
delete from vendor_groups where group_id=1
