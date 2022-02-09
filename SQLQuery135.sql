/*2 create a employee table and employeehistory table and create  a trigger on employee table and
insert and delete records into employee table and check history table*/
select * from employee

create table employeehistory(
change_id int identity primary key,
empid int not null,
empname varchar(80) not null,
empcontact int not null,
empcity varchar(20) not null,
updatde_date datetime not null,
operation char(3) not null,
check (operation='INS' and operation='DEL')
);

CREATE TRIGGER trg_employee
ON employee
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO employeehistory(
    
        empid,
        empname, 
		empcontact,
		empcity,
        updatde_date , 
        operation
    )
    SELECT
        i.empid,
        i.empname, 
		i.empcontact,
		i.empcity,
		GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.empid,
        d.empname, 
		d.empcontact,
		d.empcity,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END

insert into employee values(4,'sans',4785485,'nashik');