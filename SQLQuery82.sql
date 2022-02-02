/*20  From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. 
Order the result by subject, ascending except ‘Chemistry’ and ‘Economics’ which will come at the end of result
set. Return year, subject, winner, country, and category.
*/
create table competition(year int,subject varchar(20),winner_name varchar(20),country varchar(20),
category varchar(20))
insert into competition values(1970 ,'Physics','Hannes Alfven' ,'Sweden' ,'Scientist')
insert into competition values(1970,' Physics' ,'Louis Neel','France','Scientist')
insert into competition values(1969,'Chemistry','Luis Federico Leloir ',' France','Scientist')
insert into competition values(1970 ,'Physiology','Ulf von Euler','Sweden ' ,' Scientist')
insert into competition values(1970,'Literature','Aleksandr Solzhenit',' Russia',' Linguist')
insert into competition values(1971, 'Economics ','Paum Samuelson','USA ','Linguist')
insert into competition values(1972,'Chemistry','Dennis Gabor',' France','Scientist')
insert into competition values(1973,'Chemistry','Menachem Begin',' France','Prime Minister')
insert into competition values(1976 ,'Peace','Vikrant Thalur','Sweden ' ,' prime Minister')
insert into competition values(1975,'Physiology','Bernard Katz', 'Germany', 'Scientist')
insert into competition values(1977 ,'Peace','Nayan Thalur','Sweden ' ,' cm')
insert into competition values(1978,'Literature','JohannesGeorg ',' Russia',' Prime Minister')
insert into competition values(1989,'Chemistry','Johannes Georg Bednorz',' France','Scientist')

SELECT *FROM 
competition
WHERE year=1970 
ORDER BY
 CASE
    WHEN subject IN ('Economics','Chemistry') THEN 1
    ELSE 0
 END ASC,
 subject,
 winner_name;









