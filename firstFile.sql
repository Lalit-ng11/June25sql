create database june25_batch;
show databases;
use june25_batch;
drop database june25_batch;

-- Create Table
create table june_students(stu_id int , Name varchar(50), Loc varchar(50),
 salary decimal(10,2));
 
 -- Insert Values 2ways
  -- 1st way
 insert into june_students(stu_id , Name,Loc,salary)
 values(1,'Sahil','Pune',10000),(2,'Amol','Mumbai',20000);
 
  -- 2nd way
  insert into june_students values(3,'Smita','Nagpur',30000);
  
  -- to show table data
   -- 1. full/complete data
	select * from june_students;
   -- 2.Partial data
	select name,loc from june_students;
     
 -- comments  
 #single line comment
 -- #
 
  /* multi line
  comment*/
  
  
 
 
 
 
 
 
 
 
 
 

