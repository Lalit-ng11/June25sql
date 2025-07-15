use june25_batch;
SET SQL_SAFE_UPDATES = 0;
-- Having Clause
select job_id,count(*) from employees group by job_id
having count(*) >= 5; 

-- constraints
create table students (id int not null ,
Name varchar(40) , Email varchar(40) unique , 
location varchar(40) default 'Pune');

insert into students
 values(1,'Jack','jack@gmail.com','Mumbai');
 insert into students(id,name,email) values
 (2,'Krishna','krishna@gmail.com');
 
 select * from students;
 
create table users1(user_id int , name varchar(40), 
email varchar(40) unique); 

insert into users1 values
(1,'John doe','john@gmail.com'),
(2,'Jane k','jane@gmail.com');

create table users2(user_id int primary key , name varchar(40), 
email varchar(40) unique); 
insert into users2 values
(1,'John doe','john@gmail.com'),
(2,'Jane k','jane@gmail.com');


create table product (product_id int primary key,
product_name varchar(100) , price decimal(10,2));

insert into product values(1,'Laptop',75000),
(2,'Mobile',45000);

select * from product;
insert into product values(null,'Laptop',75000),
(2,'Mobile',45000);

create table orders(order_id int primary key,
 user_id int ,product_id int , 
 foreign key(user_id) references users2(user_id),
 foreign key(product_id) references product(product_id)
);

insert into orders values(101,2,1);
insert into orders values(102,2,2),(103,1,2);
select * from orders;

create table E_orders (order_id int primary key,
order_place varchar(40), price int
 check(price > 500));
 
 insert into e_orders values(1,'Pune',600);
select * from e_orders;




 









