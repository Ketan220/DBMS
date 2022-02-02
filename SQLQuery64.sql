--You can also assign the constraint a separate name by using the CONSTRAINT keyword as follows:
CREATE TABLE productss1(
    productid INT IDENTITY PRIMARY KEY,
    productname VARCHAR(255) NOT NULL,
    unitprice DEC(10,2) CONSTRAINT pp1 CHECK(unitprice > 0)
);
INSERT INTO productss1
VALUES ('Awesome Free Bike', 0);//error

INSERT INTO productss1
VALUES ('Awesome Bike', 599);
select*from productss1

