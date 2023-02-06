create table emps (
    empno int,
    ename varchar(25),
    job varchar(25),
    sal int not null,
    deptno int default 10
);

alter table emps add constraint pk1 primary key (empno);
alter table emps add constraint jb1 unique(ename);
alter table emps add constraint ck1 check (job in ('prof','ap','lect') );

insert into emps (empno,ename,job,sal) values ('1','a','ap','10');
insert into emps (empno,ename,job,sal) values ('2', 'John Doe', 'prof', '10000');
insert into emps (empno,ename,job,sal) values (3, 'Jane Doe', 'lect', 8000);

select * from emps ;

desc emps;

drop table emps;


--2

create table book(
    rno int primary key,
    doi date,
    dor date,
    check (dor>doi)
);

insert into book values ('1',to_date('2022-01-01','yyyy-mm-dd'), to_date('2022-01-02','yyyy-mm-dd'));

select * from book;

--3

create table st(
    rno int ,
    class char,
    marks int, 
    primary key(rno,class),
    check(marks>0)
);

insert into st values(1,'a',10);
insert into st values (2,'b',10);

select * from st;

--4

create table s(
    sno int primary key,
    sname varchar(50),
    city varchar(50)
);

insert into s values(1,'a','b');
insert into s values(2,'b','c');

select * from s;


--5 

create table p (
    pno int primary key,
    pname varchar(50),
    color varchar(50)
);

insert into p values (1,'a','b');

insert into p values (2,'a','b');

select * from p;

--6
create table sp (
    sno int , 
    pno int,
    qty int ,
    constraint pk primary key (sno,pno),
    constraint s_fk foreign key (sno) references s(sno),
    constraint p_fk foreign key (pno) references p(pno)
);


select * from sp ;

insert into sp values ('1','2','3');

--7

create table dept (
    deptno int primary key , 
    dname varchar(50),
    constraint dept_ck check (dname in ('acc','comp','elect'))
);

insert into dept values (1,'acc');
insert into dept values (2,'comp');
select * from dept;

--8

create table empl (
    empno int primary key, 
    ename varchar(50) unique,
    ejob varchar(50) not null,
    sal int not null,
    deptno int,
    constraint emp_cke check(ejob in ('prof','ap','lect')),
    constraint emp_fke foreign key (deptno) references dept(deptno)
);
