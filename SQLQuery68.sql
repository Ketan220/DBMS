CREATE TABLE productss5(
    product_id INT IDENTITY PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    unit_price DEC(10,2),
    discounted_price DEC(10,2),
    CHECK(unit_price > 0),
    CHECK(discounted_price > 0 AND discounted_price > unit_price)
);
insert into productss5 values('mouse',56,120)
insert into productss5 values('mouse',0,0)
insert into productss5 values('mouse',130,230)
insert into productss5 values('mouse',130,130)
select*from productss5
