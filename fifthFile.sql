use june25_batch;
SET SQL_SAFE_UPDATES = 0;

select * from emp_data;
-- Views

create view emp_data_view as
select fname,lname,salary,loc from emp_data
where salary > 70000 or loc = 'new york';

show create view emp_data_view;
select * from emp_data_view;

create view emp_data_view2 as
select fname,lname,salary,loc from emp_data
where salary > 70000 and loc = 'new york';

select * from emp_data_view2;

drop view emp_data_view;

-- UNION
select * from 50_startups
union 
select * from 31_startups;

-- union all 
select * from 50_startups
union all
select * from 31_startups;

-- SQL INDEX
select * from customers_100;
create index index_one on 50_startups(rnd);
select * from 50_startups;










