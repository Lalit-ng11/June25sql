use june25_batch;
SET SQL_SAFE_UPDATES = 0;

-- ORDER BY
select * from emp_data;
select * from emp_data order by fname asc;
select * from emp_data order by fname desc;
select * from emp_data order by salary desc;
select * from emp_data order by Salary asc;
select * from emp_data order by FName asc , salary desc;
select * from emp_data order by salary desc limit 5;
select * from emp_data order by salary desc limit 6,1;
select * from emp_data order by salary desc limit 6,2;

desc emp_data;
-- Alias
select fname as FirstName from emp_data;
select fname as FirstName, salary as Emp_Salary
, loc as Location from emp_data order by salary desc limit 5;

select concat(fname,'_',lname) as Name from emp_data;

-- Joins
-- 1.Inner Join
create table join_emp (emp_id int ,
 emp_name varchar(40) , dept_id int);
  insert into join_emp values(1,'Parth',10),
  (2,'Riya',20),(3,'Prerna',30),(4,'Gaurav',null);
  
  select * from join_emp;
  
  create table join_dept (dept_id int ,
 dept_name varchar(40));
  insert into join_dept values(10,'HR'),
  (20,'IT'),(30,'Marketing'),(40,'Finance');
  
  select * from join_dept;
 -- 1.Inner join
 select e.emp_name , d.dept_name from
 join_emp e 
 inner join
 join_dept d
 on e.dept_id = d.dept_id;
 
 -- 2.left join
 select e.dept_id,e.emp_name , d.dept_id, d.dept_name  from
 join_emp e left join join_dept d on e.dept_id = d.dept_id;
  
  -- 3.right join
 select e.dept_id,e.emp_name , d.dept_id, d.dept_name  from
 join_emp e right join join_dept d on e.dept_id = d.dept_id;
 
-- 4.Full outer join
select e.dept_id,e.emp_name , d.dept_id, d.dept_name  from
 join_emp e left join join_dept d on e.dept_id = d.dept_id
 union
 select e.dept_id,e.emp_name , d.dept_id, d.dept_name  from
 join_emp e right join join_dept d on e.dept_id = d.dept_id;
  
-- 5.Cross Join

select e.emp_name,d.dept_name from
 join_emp e
cross join join_dept d;

-- 6.self join
alter table join_emp add column manager_id int;
update join_emp set manager_id = 1 where emp_id =2;
update join_emp set manager_id = 1 where emp_id =3;
update join_emp set manager_id = 2 where emp_id =4;
update join_emp set manager_id = 2 where emp_id =1;

select * from join_emp;
select a.emp_name as Emp ,
b.emp_name as Manager
from join_emp a
join
join_emp b 
on 
a.manager_id = b.emp_id;

-- GROUP BY
select * from june_class;
select * from employees;
select job_id,avg(salary) from employees group by job_id;
select job_id,sum(salary) from employees group by job_id; 















