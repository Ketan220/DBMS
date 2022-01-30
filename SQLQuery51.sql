/*A staff reports to a store manager specified by the value in the manager_id column. 
If the value in the manager_id is null, then the staff is the top manager.*/
CREATE TABLE staffs (
	staff_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	active tinyint NOT NULL,
	store_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (store_id) 
        REFERENCES stores (store_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (manager_id) 
        REFERENCES staffs (staff_id) 
        ON DELETE NO ACTION ON UPDATE NO ACTION
)

insert into staffs values('varsha','bhange','vb1@gmail.com','45894554',1,1,1)
insert into staffs values('rameshwar','bhange','bkr1@gmail.com','78894554',2,2,2)
select * from staffs

