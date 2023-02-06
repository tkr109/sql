create table sailors (
    sid int primary key,
    sname varchar(25),
    rating int, 
    age int
);
create table boats(
    bid int primary key,
    bname varchar(25),
    color varchar(25)
);
create table reserves (
    sid int ,
    bid int,
    rday date, 
    foreign key (sid) references sailors(sid),
    foreign key (bid) references boats(bid)
);

insert into sailors values (1, 'Horatio', 7.5, 25.5);
insert into sailors values (2, 'Lubber', 8, 35);

insert into boats values (101, 'Aurora', 'red');
insert into boats values (102, 'Nereid', 'green');
insert into boats values (103, 'Odyssey', 'blue');

insert into reserves values (1, 102, to_date('2022-12-20','yyyy-mm-dd'));
insert into reserves values (2, 101, to_date('2022-12-21','yyyy-mm-dd'));
insert into reserves values (2, 103, to_date('2022-12-22','yyyy-mm-dd'));

select * from boats;


--1

select sname,age from sailors;

--2 

select * from boats where color='red' or color='blue';

--3 

select min(age),max(age) from sailors;

--4 

select age from sailors where sname like 'b%b' and length(sname)>=3;

--5

select avg(rating) from sailors ;

--6

select * from sailors where rating>7;

--7 

select count(*) from reserves where sid=(select sid from sailors where sname='Horatio');

--8

select color from boats where bid in (select bid from reserves where sid=(select sid from sailors where sname='Lubber' )  );

--9

select * from sailors where sid in (select sid from reserves where bid=102 ); 

--10

select * from sailors where sid in (select sid from reserves where bid in (select bid from boats where color = 'red'));

--11

select * from sailors where sid in (select sid from reserves where bid = '102');

--12

select * from sailors where sid in (select sid from reserves where bid in (select bid from boats where color='red'));

--13

select * from sailors where sid in (select sid from reserves where bid in (select bid from boats where color='red' or color='green'));

--15 

select * from sailors
