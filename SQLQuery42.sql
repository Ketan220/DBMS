--To create a foreign key, you use the FOREIGN KEY constraint.
CREATE TABLE vendor_groups (
    group_id INT IDENTITY PRIMARY KEY,
    group_name VARCHAR (100) NOT NULL
);

drop table vendors
CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        CONSTRAINT fk_group FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
);
select * from vendor_groups
insert into vendors(vendor_name,group_id) values('amit',123)
insert into vendor_groups values('mkpits')
select * from vendor_groups
insert into vendors(vendor_name,group_id) values('amit',1)
select * from vendors
insert into vendors(vendor_name,group_id) values('arjun',2)
insert into vendor_groups values('niit')
select * from vendor_groups
insert into vendors(vendor_name,group_id) values('arjun',2)
select * from vendors
insert into vendors(vendor_name,group_id) values('arpita',2)
select * from vendors

