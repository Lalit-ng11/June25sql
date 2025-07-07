use june25_batch;
SET SQL_SAFE_UPDATES = 0;
-- Where clause operators = ! <> !=/ <>=
select * from 31_startups;
select * from 31_startups where state = 'new york';
select * from 31_startups where rnd < 100000;
select * from 31_startups 
where state = 'new york' and `Marketing Spend` = 0;

select * from 31_startups 
where state = 'new york' and `Marketing Spend` = 1;

select * from 31_startups 
where state = 'new york' or `Marketing Spend` = 1;


-- Like
select * from emp_2;
select * from emp_2 where fn like '%n';
select * from emp_2 where fn like 'n%';
select * from emp_2 where fn like '_a%';
select * from emp_2 where fn like '____l';
select * from emp_2 where fn like '_a%l';
select * from emp_2 where fn like 'ra%';

-- between 
select * from emp_2 where sal between 5000 and 9000;
select * from dept ;

select * from dept where dname is null;
select * from dept where dname is not null;

select * from dept where dname in('acc','rnd','hr');

-- aggregate function sum,avg,count,min,max

select * from 50_startups;
select count(*) as total_startups  from 50_startups;
select sum(profit) as total_profit from 50_startups;
select avg(profit) as avg_profit from 50_startups;
select max(profit) as max_profit from 50_startups ;
select min(profit) as min_profit from 50_startups;

select sum(profit) as state_profit from 50_startups where state = 'new york';

-- Unique values :- distinct /union and union all
select distinct state as distinct_states from 50_startups;

-- Delete / Truncate / Drop
SET SQL_SAFE_UPDATES = 0;
delete from 50_startups;

select * from 50_startups;

drop table 50_startups;
truncate table 50_startups;
delete from 50_startups where state in('new york','california');
select * from 50_startups;
select * from june_students;

alter table june_students add joining_date date;
alter table june_students add(Course varchar(50) , 
Duration int);
alter table june_students modify salary int;
alter table june_students modify salary decimal(10,2);
alter table June_class rename column salary to fees;
rename table june_students to June_class;
select * from June_class;
alter table June_class add email varchar(50);
alter table june_class add email_id varchar(50) after name;
alter table june_class add mobile int first;
alter table june_class drop column mobile;
alter table june_class drop column email;

-- update-set
select  * from june_class;
update june_class set fees = 50000;
update june_class set email_id = 'sahil@gmail.com',
joining_date = '2025-06-11',course = 'Java FS',Duration = 6
where stu_id = 1;

-- Limit clause
select * from emp_data;
select * from emp_data limit 3;
select * from emp_data limit 3,1;
-- select * from emp_data where  max(salary) limit 3;
-- select fname,lname,salary from emp_data order by salary desc limit 3;



























