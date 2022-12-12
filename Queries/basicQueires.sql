select count(*) from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='SA_REP';
select count(*) from EMPLOYEES where SALARY>8000;
select count( distinct FIRST_NAME) from EMPLOYEES;
select * from EMPLOYEES order by SALARY DESC ;
select * from EMPLOYEES order by FIRST_NAME desc ;
select * from EMPLOYEES where FIRST_NAME like 'C%';
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '__z__';
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '_u%';
select avg (SALARY) from EMPLOYEES;
select JOB_ID,avg(SALARY) from EMPLOYEES group by JOB_ID;
select SALARY,count(*) from EMPLOYEES group by SALARY order by SALARY;
select JOB_ID, count(*) from EMPLOYEES group by JOB_ID;
select JOB_ID,count(*), avg(SALARY) from EMPLOYEES  group by JOB_ID having avg(SALARY) >5000;
select FIRST_NAME as "Given Name" from EMPLOYEES;
-->column aliases
select FIRST_NAME||' '||LAST_NAME  as "Full Name" from EMPLOYEES;
select concat(EMAIL,'@gmail.com') as "Full Email" from EMPLOYEES;
select e.FIRST_NAME,j.JOB_ID from EMPLOYEES e , JOB_HISTORY j ;

select FIRST_NAME||' '||LAST_NAME as "full Name" from EMPLOYEES ;
create view EmployeeInfo as select FIRST_NAME||' '||LAST_NAME as "full Name" from EMPLOYEES ;
select FIRST_NAME||' '||LAST_NAME as "FullName" ,lower(EMAIL||'@gmail.com') as "Email" from EMPLOYEES;
create or replace view EmployeeInfo as select FIRST_NAME||' '||LAST_NAME as "FullName" ,lower(EMAIL||'@gmail.com') as "Email" from EMPLOYEES;
drop view EMPLOYEEINFO2;
select * from EMPLOYEES where SALARY= (select max(salary) from Employees);
select * from (select * from EMPLOYEES order by SALARY desc) where ROWNUM<11;
select lower(EMAIL)||'@gmail.com' as "fullEmail" from EMPLOYEES;
select * from (select * from EMPLOYEES order by SALARY desc) where ROWNUM
select * from EMPLOYEES where SALARY= (select max(SALARY) from EMPLOYEES where SALARY<(select max(salary) from Employees));
