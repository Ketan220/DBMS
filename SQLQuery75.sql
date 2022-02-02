--First, create a new table with one column whose data type is INT:
CREATE TABLE t1 (c INT);
INSERT INTO t1
VALUES 
        (1),
        (2),
        (3);
        
       
--Second, modify the data type of the column from INT to VARCHAR:
ALTER TABLE t1 
ALTER COLUMN c VARCHAR (2);

 select * from t1
        insert into t1 values(4)
          insert into t1 values('a')
          select * from t1

--Third, insert a new row with a character string data:
INSERT INTO t1 VALUES ('@');

--Fourth, modify the data type of the column from VARCHAR back to INT:
ALTER TABLE t1 
ALTER COLUMN c INT;

delete from t1 where c = 'a'
delete from t1 where c = '@'
 ALTER TABLE t1 ALTER COLUMN c INT;





