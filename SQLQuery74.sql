--SQL Server ALTER TABLE ADD column examples
CREATE TABLE quotations (
    quotation_no INT IDENTITY PRIMARY KEY,
    valid_from DATE NOT NULL,
    valid_to DATE NOT NULL
);

--To add a new column named description to the quotations table, you use the following statement:
alter table quotations
add description varchar(255) NOT NULL;

--Modify column’s data type
--To modify the data type of a column, you use the following statement:
exec sp_help quotations
alter table quotations 
alter column description varchar(25)

