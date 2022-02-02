--Add a NOT NULL constraint to a nullable column
CREATE TABLE t3 (c VARCHAR(50));
INSERT INTO t3
VALUES
    ('Nullable column'),
    (NULL);

--If you want to add the NOT NULL constraint to the column c, you must update NULL to non-null first for example:
UPDATE t3 SET c = '' WHERE c IS NULL;

--And then add the NOT NULL constraint:
ALTER TABLE t3
ALTER COLUMN c VARCHAR (20) NOT NULL;
