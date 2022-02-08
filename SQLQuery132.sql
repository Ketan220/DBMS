select * from employee
insert into employee (empid,empname,empcontact,empcity)
values(1,'ketan',487458,'nagpur'),
(2,'raj',484566,' mumbai'),
(3,'dhanush', 40885868	,'nagpur');

create funtion emp(
@empname(50),
@empcontact(50),
@empcity(50)
)
returns varchar(150)
as
begin return(@empname+' '+@empcontact+' '+@empcity)
end;

      create function fun_emp2
    (  
       @EmpContact varchar(50),  
       @EmpName varchar(50),  
       @EmpCity varchar(50)  
    )  
    returns varchar(150)  
    as  
    begin return(select @EmpContact+ ' ' +@EmpName + ' ' + @EmpCity)  
    end  

      create function fun_emp2
    (  
       @EmpContact varchar(50),  
       @EmpName varchar(50),  
       @EmpCity varchar(50)  
    )  
    returns varchar(150)  
    as  
    begin return(select @EmpContact+ ' ' +@EmpName + ' ' + @EmpCity)  
    end;

	select dbo.fun_emp2(empcontact,empname,empcity) as 'detail' from employee