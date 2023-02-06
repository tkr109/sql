create table emp(
   empno int,
   ename varchar(50),
   ejob varchar(50),
    sal int,
   deptno int
);


insert into emp values (1, 'John', 'Manager', 5000, 10);
insert into emp values (2, 'Jane', 'Clerk', 3000, 20);
insert into emp values (3, 'Bob', 'Salesperson', 4000, 30);

select empno,ename from emp where deptno=20;    --3

select * from emp where sal>2000;   --4

select ename, sal as salary from emp where ejob='Clerk'; -- 5

select * from emp where sal<3000 or sal>2000; --6 

select * from emp where deptno='30' or deptno='20' or deptno='30'; --7

select * from emp where deptno is null;

--9 ni hau

select * from emp where ename like 'J%';    --10

select * from emp where ename like '%n';    --11

select * from emp where ename like '%a%a%';     --12

select * from emp where ename like '_o%';     --13

select * from emp where ename like 'B%b';       --14

select * from emp;
