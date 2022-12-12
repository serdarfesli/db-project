select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

select count(*) from EMPLOYEES where SALARY < 5000;
select count(*) from EMPLOYEES where SALARY between 6000 and 7000;
select distinct REGION_ID from COUNTRIES;
select SALARY from EMPLOYEES where LAST_NAME='Grant' and FIRST_NAME='Douglas';

select max( SALARY) from EMPLOYEES  where salary< (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES where SALARY = (select max( SALARY) from EMPLOYEES  where salary< (select max(SALARY) from EMPLOYEES));

select min (SALARY) from EMPLOYEES;

select * from EMPLOYEES where SALARY=(select min (SALARY) from EMPLOYEES);

select min(SALARY) from EMPLOYEES where SALARY> (select min (SALARY) from EMPLOYEES);

select * from EMPLOYEES where  SALARY=(select min(SALARY) from EMPLOYEES where SALARY> (select min (SALARY) from EMPLOYEES));

select round(avg(SALARY)) from EMPLOYEES;

select * from EMPLOYEES where SALARY<(select round(avg(SALARY)) from EMPLOYEES);

select count (DEPARTMENT_ID) from DEPARTMENTS;

select START_DATE from JOB_HISTORY order by START_DATE desc ;

select * from EMPLOYEES where SALARY= (select max(SALARY) from EMPLOYEES);

