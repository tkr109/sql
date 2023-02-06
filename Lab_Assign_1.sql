create table student (
    rno int primary key, sname varchar(50),dob date, gender varchar(50), college varchar(50), city varchar(50), marks int 
);


insert into student values ('1','a',to_date('2003-02-02','yyyy-mm-dd'),'male','tiet','delhi','100');
insert into student values ('2','b',to_date('2003-03-03','yyyy-mm-dd'),'male','tiet','b','101');
insert into student values ('3','c',to_date('2003-04-04','yyyy-mm-dd'),'female','tiet','c','102');
insert into student values ('4','d',to_date('2003-05-05','yyyy-mm-dd'),'female','tiet','d','103');
insert into student values ('5','e',to_date('2003-06-06','yyyy-mm-dd'),'male','tiet','e','104');

select * from student;  --3

desc student ;  --4

select rno,sname from student where city='b' or city='d';   --5

select * from student order by marks desc;  --6

update student  set rno='89' where rno='5'; --7

update student set sname='swezal', city='patiala' where rno='2'     --8

delete from student where city='d'; --9

delete from student where marks<102;    --10


