use june25_batch;
SET SQL_SAFE_UPDATES = 0;
select * from customers_100;
select * from emp_data;
select lname,substr(lname,1,5) from emp_data;
select fname,replace(fname,'a','@') from emp_data;
select lname , instr(lname,'o') from emp_data;
select fname , lower(fname) from emp_data;
select fname , upper(fname) from emp_data;
select fname, char_length(fname) as total_char from emp_data;

select * from dept;
select dname ,ltrim(dname) as Trimed_data from dept;
select dname ,rtrim(dname) as Trimed_data from dept;
select dname ,trim(dname) as Trimed_data from dept;

select fname , left(fname,4) as left_char from emp_data;
select fname , right(fname,4) as left_char from emp_data;

select concat(fname,'-',lname) as FullName from emp_data;

select concat_ws('=',fname,lname) as FullName from emp_data;

select format(8262.97568,2);

-- Date function 
select current_timestamp();
select * from employees;

select adddate('2025-02-02', interval 5 day) ;
select * from june_class;
select joining_date,adddate(joining_date , interval 2 day)
from june_class;

select joining_date,subdate(joining_date , interval 2 day)
from june_class;

CREATE TABLE Employees1 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    joining_date DATE,
    manager_id INT
);

INSERT INTO Employees1 VALUES
(1, 'Alice', 'HR', 50000, '2021-01-15', NULL),
(2, 'Bob', 'Finance', 60000, '2020-05-10', 1),
(3, 'Charlie', 'IT', 55000, '2021-07-01', 1),
(4, 'David', 'Finance', 70000, '2019-11-20', 2),
(5, 'Eve', 'IT', 50000, '2022-02-01', 3),
(6, 'Frank', NULL, NULL, NULL, NULL);

select * from employees1;
select joining_date,adddate(joining_date , interval 2 month)
from employees1;

select joining_date,adddate(joining_date , interval 2 year)
from employees1;

select now();
select joining_date,subdate(joining_date, interval 2 year) 
from employees1;

select date_format(now(),'%d-%m-%Y');
select date_format(now(),'%W - %d-%M-%Y');
select extract(month from now());
select extract(day from now());
select extract(year from now());
select extract(hour from now());
select extract(minute from now());
select extract(second from now());
select * from employees;

-- stored procedure.
delimiter //
 create procedure job_id()
  begin
   select first_name,last_name,job_id,salary from employees
   where job_id = 'it_prog';
 end //
 delimiter ;
call job_id();
call join_procedure();

select * from emp_2;
delimiter //
 create procedure emp_data(IN userID int)
 begin
  select * from emp_2 where empid = userID;
 end //
delimiter ;
 call emp_data(103);
 
 DELIMITER //
  CREATE PROCEDURE EMP_COUNT(OUT total int)
  BEGIN
    select count(*) into total from emp_2;
  END //
 DELIMITER ;
 
 call emp_count(@total);
 select @total;
 
 DELIMITER //
  CREATE PROCEDURE UPDATED_SAL1(INOUT current_sal decimal(10,2))
  BEGIN
	set current_sal =current_sal+(current_sal * 0.10);
  END //
 DELIMITER ;
 
 set @salary = 20000;
 call updated_sal1(@salary);
 select @salary;
 
 
-- CASE STATEMENT
select * from emp_data;

update emp_data
 set salary = 
   case
     when dept_id = 10 then 20000
     when dept_id = 20 then 30000
     else 0
   end;

-- Sub-query
select * from 31_startups;
select rnd,state from 31_startups where state = 'florida';
select * from cars93;
select * from emp_2;

select fn,ln,sal from emp_2
where sal > (select avg(sal) from emp_2);

-- Masking
-- text messages we recieve from banks
 -- credit card numbers / debit , account number 
  -- 912xxxxxxxx90, raj@xxxxx.com 
 
 select * from employees;
select concat('xxxxxxxxx', substring(`phone_number`,
9,3)) as masked_ph from employees;

-- masking on Email and Credit Card/debit card number ?
-- 1. DDL - Data definition Language 
      -- commands :- create,alter,drop,truncate,rename
	
-- 2. DML - Data Manipulation Language
      -- commands :- insert,update ,delete

-- 3.DQL - Data Query Language
   -- commands :- select
   
-- 4. DCL - Data Control Language
   -- commands :- Grant = give privileges. , Revoke = removes privileges
-- 5 TCL - Transaction Control Language
   -- commands :- commit = save changes , rollback = undo changes
			-- Savepoint = create a checkpoint for partial rollback.



  
  






















