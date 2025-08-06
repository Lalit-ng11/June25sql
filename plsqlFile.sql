use june25_batch;
SET SQL_SAFE_UPDATES = 0;

-- triggers

-- cursor 
-- syntax 
-- declare cursor_name CURSOR FOR query;
-- OPEN cursor_name;
-- FETCH cursor_name into variable;
-- CLOSE cursor_name;

create table plsql_employee(
ID int,Name varchar(40), 
Age int , Salary decimal(10,2));
insert into plsql_employee values
(1,'Diksha P',28,50000);

insert into plsql_employee values
(2,'Mayank',35,70000),
(3,'Lekhraj k ',40,60000),
(4,'Kiran J',25,40000),
(5,'Pratik A',30,90000);

select * from plsql_employee;
create table trigger_emp(ID int,
Name varchar(40) not null,
Occupation varchar(40) not null,
Working_Date date ,Working_hours  int
);

insert into trigger_emp values
(1,'Diksha P','Scientist','2024-10-04',4),
(2,'Mayank','Business','2024-10-04',5),
(3,'Lekhraj k ','Programmer','2024-10-04',6),
(4,'Kiran J','Doctor','2024-10-04',9),
(5,'Pratik A','Singer','2024-10-04',10),
(6,'Nil S','Engineer','2024-10-04',6);

select * from trigger_emp;

delimiter //
CREATE DEFINER = `root`@`localhost`FUNCTION`avg_sal_fun1`() returns float
	  reads sql data
	  deterministic
begin
	declare avg_salary float;
    select avg(salary) into avg_salary from plsql_employee;
    return avg_salary;
end; //

delimiter ;

select avg_sal_fun1() as AVG_salary;

delimiter //
CREATE DEFINER = `root`@`localhost`FUNCTION`emp_above_sal`(threshold int) returns float
	  reads sql data
	  deterministic
begin
	declare emp_count int;
    select count(*) into emp_count from plsql_employee where
    salary > threshold;
    return emp_count;
end; //

delimiter ;

select emp_above_sal(70000) as emp_above_avg_salary;

-- Triggers before & After
select * from trigger_emp;

-- Before insert
DELIMITER //
  CREATE TRIGGER before_insert_hrs
  before insert on trigger_emp
  for each row
 BEGIN
	IF new.working_hours < 0 then
     set new.working_hours = 0;
	END IF;
 END; //
DELIMITER ;
insert into trigger_emp values(7,'Rushabh ','Engineer','2024-10-04',-4);
select * from trigger_emp;

-- After Trigger
select count(*) from trigger_emp;
create table emp_count(Total_Emp int default 13);
select * from emp_count;
insert into  emp_count values(13);

DELIMITER //
  CREATE TRIGGER after_insert_emp
  after insert on trigger_emp
  for each row
 BEGIN
	update emp_count set Total_Emp = Total_Emp + 1;
 END; //
DELIMITER ;
insert into trigger_emp values(9,'kk Jay ','Dr','2024-10-04',6);
select * from trigger_emp;
select * from emp_count;

show triggers;
drop trigger june25_batch.after_insert_emp;






