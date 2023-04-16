--1

descirbe empl;

--2

select constraint_name,constraint_type from information_schema.table_constraints where table_name='empl';

--3 

alter table emps drop constraint jb1;

desc emps;

--4

alter table empl drop constraint emp_fke;

--5

alter table empl add constraint dfk foreign key (deptno) references dept(deptno);

--6

alter table emps modify ename int;

--7

alter table emps modify ename varchar(100);

--8
desc emps;

alter table emps add comm int;

--9

alter table s drop column city;

--10

create table emps_copy as select * from emps;

--11

create table new_dept_table as select deptno as no , dname as name from dept;
select * from  new_dept_table;

--12 

update emps set ename='aa' , job='newJob' where deptno=10;

--13 


--14
 Drop table dept;

--15 
drop table emp_copy;
