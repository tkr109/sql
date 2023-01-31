use mydb;
create table workers(
	empno int,
    ename varchar(25),
    job varchar(25),
    sal int,
    deptno int
);

insert into workers values (1,"Aryan","clerk",1000,10),
							(2,"pranav","salesperson",1001,11),
							(3,"swezal","j1",1002,12),
                            (4,"adi","j2",1003,13),
							(5,"noob","j3",1004,14);
select * from workers;

select empno as employee_number , ename as employee_name from workers where deptno=10;

select ename,sal from workers where job="clerk" or job="salesperson";

select * from workers where sal>1001 and sal<1004;

select * from workers where sal between 1001 and 1004;

select * from workers where deptno=10 or deptno=12 or deptno=13;

insert into workers value (6,"New","j6",1005,null);

select * from workers where deptno is null;

select * from workers where ename like "p%";

select * from workers where ename like "%a%a%" or ename like "%A%A%";
select * from workers where ename like "%i";

select * from workers where ename like "_r%" or ename like "_e%";


select * from workers where ename like "_r%a_" ;
