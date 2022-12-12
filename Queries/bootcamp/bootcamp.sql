select * from EMPLOYEES;

select SALARY from EMPLOYEES where  SALARY in (10000,9000);

select FIRST_NAME from EMPLOYEES where SALARY in (10000) and FIRST_NAME not in ( 'David','Ellen');
select SALARY from EMPLOYEES order by SALARY desc ;
select FIRST_NAME, LAST_NAME from EMPLOYEES order by FIRST_NAME asc, LAST_NAME desc ;
select count(*) from EMPLOYEES;
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '%e';
select JOB_ID from EMPLOYEES group by JOB_ID;
select DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;

select MANAGER_ID,avg(SALARY) from EMPLOYEES group by MANAGER_ID;
select avg(SALARY) from EMPLOYEES;
select FIRST_NAME,SALARY from EMPLOYEES where SALARY <(select avg(SALARY) from EMPLOYEES);
select FIRST_NAME,SALARY from EMPLOYEES order by SALARY desc