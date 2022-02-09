/*1- create a customer table and customerhistory table and create  a trigger on customer table and
insert and delete records into customer table and check history table*/
select*from customer

create table customer_history(
change_id int identity primary key,
custid int not null,
custname varchar(80) not null,
updatde_date datetime not null,
operation char(3) not null,
check (operation='INS' and operation='DEL')
);

--Create trigger on customer
CREATE TRIGGER trg_customer_history
ON customer
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO customer_history(
    
        custid,
        custname, 
        updatde_date , 
        operation
    )
    SELECT
        i.custid,
        i.custname,
		GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.custid,
        d.custname,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END

insert into employee values(4,'kbo',666455,'nashik')