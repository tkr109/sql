create table student (
	rno int,
    sname varchar(25),
    dob date,
    gender varchar(25),
    class int,
    college varchar(25),
    city varchar(25),
    marks int
);

SET SQL_SAFE_UPDATES = 0;

insert into student values (1,"a","2003-01-01","male",9,"one","a",99),(2,"b","2003-02-02","female",10,"two","b",98),(3,"c","2003-03-03","male",11,"three","c",97),(4,"d","2003-04-04","male",12,"four","d",96);

select * from student;

select sname as student_name from student where city="d";

select * from student order by marks asc;

update student set marks=89 where rno=4;

update student set sname="arth",city="delhi" where rno=9;

delete  from student where city="b";

delete from student where marks<90;
select * from student;
