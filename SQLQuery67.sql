/*Note that you can write column constraints as table constraints. However, you cannot write table constraints as column constraints.
For example, you can rewrite the above statement as follows:*/
CREATE TABLE productss4(
    product_id INT IDENTITY PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    unit_price DEC(10,2),
    discounted_price DEC(10,2),
    CHECK(unit_price > 0),
    CHECK(discounted_price > 0),
    CHECK(discounted_price > unit_price)
);
insert into productss4 values('mouse',56,120)
insert into productss4 values('mouse',0,0)
insert into productss4 values('mouse',120,220)
select*from productss4
