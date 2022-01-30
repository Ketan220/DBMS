/*Table production.stocks
The production.stocks table stores the inventory information i.e. the quantity of a particular product
in a specific store.*/
CREATE TABLE stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id),
	FOREIGN KEY (store_id) 
        REFERENCES stores (store_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) 
        REFERENCES products (product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

insert into stocks values(1,1,23)
insert into stocks values(2,2,56)
insert into stocks values(3,3,90)
insert into stocks values(4,4,57)
insert into stocks values(5,5,203)

select * from stocks

