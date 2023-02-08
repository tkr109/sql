select chr(65) from dual;

select concat('hello ','wrld') from dual;

select instr('hello','o') from dual;

select length('djl') from dual;

select lpad('hey',10,'*') from dual;

select rpad('hey',10,'*') from dual;

select ltrim('      ksdjflskdf') as "dd" from dual;

select rtrim('dsfsfs    ') as "sdd" from dual;

select replace('000011123','0','l') from dual;  -- llll11123

select substr('aryan_thakur',3,5) from dual;    --yan_t

select initcap ('sdljkfsJKJLHKHKJHk') from dual;

select lower('FJFJFJ') FROM DUAL;

select upper('kds') from dual;

select translate('today is moday','monday','sunday') from dual;

select sysdate from dual;

select last_day(to_date('2003-03-01','yyyy-mm-dd')) from dual;

select months_between(to_date('2003-03-01','yyyy-mm-dd'),to_date('2003-05-01','yyyy-mm-dd')) from dual;

select next_day(to_date('2023-03-01','yyyy-mm-dd'),'monday') from dual;

select greatest(5 ,3 ,6,1) from dual;

select least(5 ,3 ,6,1) from dual;

select abs(3-10) from dual;

select ceil(5.4) from dual;

select floor(5.4) from dual;

select exp(1) from dual;

select round('3.34434343433',4) from dual;

select power(2,3) from dual;

select sign('-1') from dual;

select trunc('2.34434343',4) from dual;

select mod(6,5) from dual;

select cos(10) from dual;

