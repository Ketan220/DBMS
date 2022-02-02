/*Change the size of a column
The following statement creates a new table with one column whose data type is VARCHAR(10):*/
CREATE TABLE t2 (c VARCHAR(10));
INSERT INTO t2
VALUES
    ('SQL Server'),
    ('Modify'),
    ('Column')

--You can increase the size of the column as follows:
alter table t2
alter column c varchar(15)

--You can decrease the size of the column as follows:
alter table t2
alter column c varchar(5)
