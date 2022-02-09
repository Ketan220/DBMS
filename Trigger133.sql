select * from brands

CREATE TABLE product_audits(
    change_id INT IDENTITY PRIMARY KEY,
    brand_id INT NOT NULL,
    brand_name VARCHAR(255) NOT NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL')
);

select*from product_audits

--create triger on brands
CREATE TRIGGER trg_product_audit
ON brands
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO product_audits(
    
        brand_id,
        brand_name, 
        updated_at, 
        operation
    )
    SELECT
        i.brand_id,
        brand_name,
		GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.brand_id,
	    brand_name,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END

insert into brands values('ghavesh')
insert into brands values('chanpi')

select*from product_audits

delete from brands where brand_id=7
