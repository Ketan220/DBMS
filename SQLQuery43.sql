--Hoe to Delete record parent and child table 
select * from vendor_groups
delete from vendor_groups where group_id=2 /*gruop_id=2 record will inserted in child table */
insert into vendor_groups values('aptech')
select * from vendor_groups
delete from vendor_groups where group_id=3
select * from vendor_groups