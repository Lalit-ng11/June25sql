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


