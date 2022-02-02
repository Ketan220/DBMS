--SQL Server CHECK constraint and NULL
CREATE TABLE products2(
    productid INT IDENTITY PRIMARY KEY,
    productname VARCHAR(255) NOT NULL,
    unitprice DEC(10,2) CONSTRAINT pp CHECK(unitprice > 0)
);

INSERT INTO products2 (productname,unitprice) VALUES (' Bike', null)
select*from products2

