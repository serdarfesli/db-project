

select * from COUNTRIES;
select * from DEPARTMENTS;
select DEPARTMENT_ID from DEPARTMENTS;
select * from JOBS;
select distinct MAX_SALARY from JOBS;
select * from EMPLOYEES order by SALARY DESC ;
select * from COUNTRIES where COUNTRY_NAME like 'A%';
select * from COUNTRIES where COUNTRY_NAME like '%A%';
select * from COUNTRIES where COUNTRY_NAME like '%a';

select max (EMPLOYEES.SALARY) from EMPLOYEES;
select * from EMPLOYEES where SALARY = (select max (EMPLOYEES.SALARY) from EMPLOYEES);

select round(avg(SALARY),1) from EMPLOYEES;
select * from DEPARTMENTS;
select FIRST_NAME from EMPLOYEES;
select CITY from LOCATIONS;

select FIRST_NAME,LAST_NAME,SALARY from  EMPLOYEES;
select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;
select count(*) from EMPLOYEES where MANAGER_ID=100;
select FIRST_NAME,LAST_NAME,PHONE_NUMBER from EMPLOYEES where FIRST_NAME='David' and LAST_NAME like 'B%';
select * from EMPLOYEES where SALARY>7000;
select EMAIL from EMPLOYEES where SALARY<4000;

select * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='SA_REP';
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where SALARY between 5000 and 10000;
select * from EMPLOYEES where EMPLOYEE_ID in (135,176,154,129);
select CITY from LOCATIONS where COUNTRY_ID in('IT','US','UK');