--To assign a particular name to a UNIQUE constraint, you use the CONSTRAINT keyword as follows:
CREATE TABLE person1 (
    person_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    CONSTRAINT unique_email UNIQUE(email)
);
insert into person1 values ('amit','kumar','null')
/*
The following are the benefits of assigning a UNIQUE constraint a specific name:

    It easier to classify the error message.
    You can reference the constraint name when you want to modify it.
*/
