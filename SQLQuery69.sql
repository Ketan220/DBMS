--To add a CHECK constraint to an existing table, you use the ALTER TABLE ADD CONSTRAINT statement.
CREATE TABLE products3(
    product_id INT IDENTITY PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    unit_price DEC(10,2) NOT NULL
);
--To add a CHECK constraint to the products3 table, you use the following statement:
alter table products3
add constraint positive_price check(unit_price>0)

--To add a new column with a CHECK constraint, you use the following statement:
alter table products3
add discounted_price dec(10,0) check(discounted_price>0)

--To add a CHECK constraint named valid_price, you use the following statement:
alter table products3
add constraint valid_price check(discounted_price<unit_price)

--Remove CHECK constraints
--To remove a CHECK constraint, you use the ALTER TABLE DROP CONSTRAINT statement:
alter table products3
drop constraint valid_price

--Disable CHECK constraints for insert or update
--To disable a CHECK constraint for insert or update, you use the following statement:
alter table products3
nocheck constraint positive_price


/*However, in case you did not assign the CHECK constraint a particular name, 
then you need to find it using the following statement:*/
exec sp_help products3;
