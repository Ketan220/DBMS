--Introduction to SQL Server CHECK constraint
CREATE TABLE product(
    product_id INT IDENTITY PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    unit_price DEC(10,2) CHECK(unit_price > 0)
);
insert into product values('mouse',120)
insert into product values('mouse',0)//error
select *from products

