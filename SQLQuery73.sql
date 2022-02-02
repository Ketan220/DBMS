--Add UNIQUE constraints to existing columns
CREATE TABLE persons1 (
    person_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(20),
);  

--The following statement adds a UNIQUE constraint to the email column:
ALTER TABLE persons
ADD CONSTRAINT unique_email UNIQUE(email);

--Similarly, the following statement adds a UNIQUE constraint to the phone column:
ALTER TABLE persons1
ADD CONSTRAINT unique_phone UNIQUE(phone); 

--Delete UNIQUE constraints
--To define a UNIQUE constraint, you use the ALTER TABLE DROP CONSTRAINT statement as follows:
ALTER TABLE persons1
DROP CONSTRAINT unique_phone;



