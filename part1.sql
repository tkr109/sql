create database myDB;	#create new Databse

use myDB; 	#use the database->myDB 

drop database myDB; 	#delete a database from the system

### TABLES

create table employees (
	employee_id int,
    first_name varchar(50),
    second_name varchar(50),
    hourly_pay decimal(5,2),	
    hire_date date
);

select * from employees;	#select everything from a table 

rename table employees to emp;		# rename table

drop table emp;		#drop the table

alter table emp add phone_number varchar(25);
		#add the column in table
        
alter table emp rename column phone_number to email;	#rename the column

alter table emp modify column email varchar(100);	#modify the table 

alter table emp modify email varchar(100) after second_name; 	# put email after the second_name columen

select * from emp;

### INSERT ROW

insert into emp values(1,"swezal","manhas","sw@gmail.com",25.50,"2023-10-02");

insert into emp values (2,"a","e","ae@gmail.com",26.50,"2023-10-03"),
						(3,"b","f","bf@gmail.com",27.50,"2023-10-04"),
                        (4,"c","g","cg@gmail.com",28.50,"2023-10-05"),
                        (5,"d","h","dh@gmail.com",29.50,"2023-10-06");

#if we only want to insert in some tables 
insert into emp (employee_id, first_name, second_name) values (6, "Sheldon", "Plankton");


### SELECT DATA 		* -> for evrything
	
select first_name,second_name from emp;		# will display only first_name and second name

select * from emp where employee_id=3;		# return col where id =3;

select * from emp where hire_date is null;		# return col where hire_date is null

select * from emp where hire_date is not null;


### UPDATE AND DELETE

SET SQL_SAFE_UPDATES = 0;

update emp set hourly_pay=10.25 where employee_id=4;

update emp set hourly_pay=10,hire_date="2023-10-03" where employee_id=3;		# update multiple values 

update emp set hire_date=null where employee_id=3;		# set a column value null

update emp set hourly_pay=100;		# update all the values in the column 

select * from emp;


delete from emp;	# delete all rows from the table 

delete from emp where employee_id=6;	# delete a row with specific id


### AUTO-COMMIT AND COMMIT 

# save a transaction whenever changes are made , and can be used to undo transactions 

set autocommit=off;		# all transaction will not be save automatically now 

commit ; 		# this statement will create a safe point 

rollback; 	# this will take us to the most recent save point  


### CURRENT DATE And TIME

create table test(
	my_date date,
    my_time time
);

insert into test values (current_date(),now());

select * from test;

drop table test;


### UNIQUE

# it ensures that all values in a column are different 

create table products(
	product_id int,
    product_name varchar(25) unique
);


alter table products add constraint unique(product_id);		# suppose if u havent added unique attribure 

insert into products values (1,"a"),(2,"b"),(3,"c"),(4,"d");

select * from products;

### NOT NULL

# value in that column cant be null 

create table product(
	product_id int,
    product_name varchar(100) ,
    price decimal(6,4) not null
);

alter table product modify product_id decimal(4,2) not null;

### CHECK

create table employee{
	employee_id int ,
    first_name varchar(50),
    second_name varchar(50),
    hourly_pay decimal(5,2),
    hire_date date,
    constraint chk_hourly_pay check (hourly_pay>=10)
};

 
### DEFAULT 
# if we dont specify a value then we can automatically get the value in it 

insert into products (product_name) values ("straw"),("napkin"),("fork"),("spoon");

delete from products where product_id>=104 ;

select * from products;

create table products (
	id int ,
    name varchar(25),
    price int default 0
);

alter table products alter product_id set default 0;


### PRIMARY KEY 
# Every table has only 1 p key

use myDB;

create table trasnsactions (
	id int primary key,
    amount decimal(5,2) 
);

alter table transactions add constraint primary key (id);

insert into trasnsactions values (122,1.2),(3221,32.2),(12,32.2),(124,22.2);

select amount from trasnsactions;

drop table trasnsactions;

### Auto Increment 
#Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

create table trasnsactions (
	id int primary key auto_increment ,
    amount decimal(5,2) 
);

SET SQL_SAFE_UPDATES = 0;

insert into trasnsactions(amount) values (6.54);

delete from trasnsactions;

alter table trasnsactions auto_increment=1000;

select * from trasnsactions ;

### FOREiGN KEY

# primary key of one table present in the other table , also used to create a link bw tables 

CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50),
last_name VARCHAR(50)
);

insert into customers (first_name,last_name)
values ("Fred", "Fish"),
		("Larry", "Lobster"),
		("Bubble", "Bass");

select * from customers;

drop table trasnsactions;

create table transactions (
	transaction_id int primary key auto_increment,
	amount decimal(5, 2),
	customer_id int,
	foreign key (customer_id) references customers(customer_id)		-- pehle jisko fk banana then kis table ke kis col ke eq rakhna hai 
);

alter table transactions drop foreign key transtransactions_ibfk_1;

alter table transactions add constraint fk_customer_id FOREIGN KEY(customer_id) REFERENCES customers(customer_id);

delete from transactions ;

alter table transactions auto_increment 1000;

insert into transactions (amount,customer_id) values (4.99,3),(2.89,2),(3.38,3),(4.99,1);

delete from customers where customer_id=3;

select * from transactions ;

### JOIN 
# It is used to combine rows from 2 or more tables 

insert into transactions (amount,customer_id) values (1.00,null) ;

insert into customers (first_name,last_name) values ("Poppy","Puff");

select * from transactions;
select * from customers ;

select * from transactions right join customers on transactions.customer_id=customers.customer_id;


### FUNCTIONS 

select count(amount) as count from transactions ; 

select max(amount) as max_count from transactions ; 

select min(amount) as min_count from transactions ; 

select Avg(amount) as average from transactions ; 

select sum(amount) as sum from transactions ; 

select concat(first_name," ",second_name) as full_name from emp;

#### AND OR NOT 

alter table emp add column job varchar(25) after hourly_pay ;
select* from emp;

SET SQL_SAFE_UPDATES = 0;

update emp set job="j4" where employee_id=4;

select * from emp where job="j4" and employee_id=4;

select * from emp where job="j4" or employee_id=5;

select * from emp where job="j4" and not  employee_id=4;

select * from emp where hire_date between "2023-01-04" and "2023-01-07";

select * from emp where job in ("j3","j4");

### WILD CARD CHARACTERS 

select * from emp where email like "@gmail.com%";	# like will give us a pattern 

### ORDER BY

select * from emp order by second_name asc ;

select * from transactions order by customer_id,amount;		# order by customer id and if they are same them order by amount 

### LIMIT Clause  

### Union 
# it is used to combine the results of two or more select statements 

select * from customers 
union 
select * from transactions;

select first_name,second_name from emp union all
select first_name,last_name from customers;

### SELF JOIN

alter table customers add referral_id int;

update customers set referral_id=2 where customer_id=4;

select * from customers;

select * from customers as a inner join customers as b on a.referral_id=b.customer_id;

###Views
#a virtual table based on the result-set of an SQL statement
#The fields in a view are fields from one or more real tables in database 
#They’re not real tables, but can be interacted with as if they were


select * from emp;

create view emp_attendence as select first_name,second_name from emp;
select * from emp_attendence order by second_name asc;alter

