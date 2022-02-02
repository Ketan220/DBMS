--UNIQUE constraints for a group of columns
--The following example creates a UNIQUE constraint that consists of two columns person_id and skill_id:

CREATE TABLE person_skills (
    id INT IDENTITY PRIMARY KEY,
    person_id int,
    skill_id int,
    updated_at DATETIME,
    UNIQUE (person_id, skill_id)
);

insert into person_skills values(111,10,'2021-12-12')
insert into person_skills values(111,10,'2021-12-12')//error
insert into person_skills values(112,10,'2021-12-12')
insert into person_skills values(111,11,'2021-12-12')
