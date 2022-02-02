--Introduction to SQL Server ALTER TABLE DROP COLUMN
CREATE TABLE price_lists(
    product_id int,
    valid_from DATE,
    price DEC(10,2) NOT NULL CONSTRAINT ck_positive_price CHECK(price >= 0),
    discount DEC(10,2) NOT NULL,
    surcharge DEC(10,2) NOT NULL,
    note VARCHAR(255),
    PRIMARY KEY(product_id, valid_from)
); 

--The price column has a CHECK constraint, therefore, you cannot delete it. If you try to execute the following statement, you will get an error:
ALTER TABLE price_lists
DROP COLUMN price;

--To drop the price column, first, delete its CHECK constraint:
ALTER TABLE price_lists
DROP CONSTRAINT ck_positive_price;

--And then, delete the price column:
ALTER TABLE price_lists
DROP COLUMN price;

--The following example deletes two columns discount and surcharge at once:
ALTER TABLE price_lists
DROP COLUMN discount, surcharge;





