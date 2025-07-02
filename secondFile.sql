use june25_batch;
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


