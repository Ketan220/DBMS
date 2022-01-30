/*ON UPDATE NO ACTION: SQL Server raises an error and rolls back the update action on the row in the parent 
table.*/
drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT ,
        constraint fk4  foreign key(group_id)
        references vendor_groups(group_id)
        on update no action
        )

insert into vendor_groups values('raisonic')
select * from vendor_groups
select * from vendors
insert into vendors values('amit',4)
select * from vendors
select * from vendor_groups
update vendor_groups set group_id=5 where group_id=4

