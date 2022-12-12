select FIRST_NAME,PHONE_NUMBER,SALARY from EMPLOYEES;
select FIRST_NAME from EMPLOYEES where JOB_ID='ST_CLERK';
select distinct JOB_ID from EMPLOYEES;
select POSTAL_CODE from LOCATIONS where COUNTRY_ID='JP' or COUNTRY_ID='UK' or COUNTRY_ID='CA';
select CITY,COUNTRY_ID from LOCATIONS where COUNTRY_ID!='CH' or COUNTRY_ID!='US';
select JOB_TITLE from JOBS where MIN_SALARY>4000 and MIN_SALARY<9000;
select distinct SALARY  from EMPLOYEES order by SALARY asc ;
select FIRST_NAME,HIRE_DATE from EMPLOYEES order by HIRE_DATE;
select LAST_NAME,SALARY,COMMISSION_PCT from EMPLOYEES order by COMMISSION_PCT;
select FIRST_NAME,SALARY from EMPLOYEES order by FIRST_NAME asc , SALARY desc ;
select FIRST_NAME,LAST_NAME from EMPLOYEES order by FIRST_NAME,LAST_NAME desc ;
select * from EMPLOYEES where JOB_ID like '%CLERK%';
select EMAIL from EMPLOYEES where EMAIL like '___E__';
select FIRST_NAME,SALARY,HIRE_DATE from EMPLOYEES where HIRE_DATE like '%2005%44';
select max(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';
select sum(SALARY) from EMPLOYEES where JOB_ID='ST_MAN';
select avg(SALARY) from EMPLOYEES where JOB_ID='SA_REP';
select max(SALARY),DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;
select COunt(*),DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;
select JOB_ID , min(SALARY), max(SALARY) ,avg(SALARY), sum(SALARY) from EMPLOYEES group by JOB_ID;
select DEPARTMENT_ID,count(*) from EMPLOYEES group by DEPARTMENT_ID having count(*)>10;
select JOB_ID,avg(COMMISSION_PCT) from EMPLOYEES group by JOB_ID having avg(COMMISSION_PCT)>0.2;
select MANAGER_ID,max(SALARY) from EMPLOYEES group by MANAGER_ID having max(SALARY)>10000 order by MANAGER_ID;
select *from (select * from EMPLOYEES order by SALARY desc) where ROWNUM<11;
select DEPARTMENT_ID,count(*) from EMPLOYEES group by DEPARTMENT_ID having count(*)>(Select count(*) from EMPLOYEES where DEPARTMENT_ID='80');
select * from EMPLOYEES where HIRE_DATE < (select min(HIRE_DATE) from EMPLOYEES where JOB_ID='IT_PROG');
select upper(CITY),lower(STREET_ADDRESS)  from LOCATIONS;





