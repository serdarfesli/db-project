select * from EMPLOYEES;
select * from EMPLOYEES where FIRST_NAME='Steven';
select COUNTRIES.COUNTRY_NAME, L.CITY from COUNTRIES join LOCATIONS L on COUNTRIES.COUNTRY_ID = L.COUNTRY_ID;
select E.FIRST_NAME,D.DEPARTMENT_NAME from EMPLOYEES E join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;
select JOBS.JOB_ID,MANAGER_ID from JOBS join EMPLOYEES on JOBS.JOB_ID = EMPLOYEES.JOB_ID;
select DEPARTMENT_NAME,STATE_PROVINCE from DEPARTMENTS d left join LOCATIONS L on d.LOCATION_ID = L.LOCATION_ID ;
select FIRST_NAME,START_DATE from EMPLOYEES e full join  JOB_HISTORY JH on e.EMPLOYEE_ID = JH.EMPLOYEE_ID;
select COUNTRY_NAME,REGION_NAME from COUNTRIES full join  REGIONS on COUNTRIES.REGION_ID = REGIONS.REGION_ID;
select DEPARTMENT_NAME,COMMISSION_PCT from DEPARTMENTS full join EMPLOYEES on DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID;
select FIRST_NAME,END_DATE from EMPLOYEES  join JOB_HISTORY on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;
select * from JOBS;
select e.FIRST_NAME,JOB_TITLE from EMPLOYEES e join JOBS j on e.JOB_ID = j.JOB_ID ;


create table laptop(
    id integer primary key ,
    color varchar(20)
);
insert into laptop values (1,'black');
insert into laptop values (2,'black');
insert into laptop values (3,'white');
insert into laptop values (4,'black');
select * from laptop;
truncate table laptop;

alter table laptop add color varchar(20);
alter table laptop add brand varchar(20);
update laptop set brand='dell' where id=4;
update laptop set color='green' where brand='dell';
update laptop set color=null where brand is null;
update laptop set color='white' where brand is null;
alter table laptop drop column color;
alter table laptop add price integer;

select * from laptops;
alter table laptop rename to laptops;
insert into laptop values (1,'dell',200);
insert into laptop values (2,'dell',300,'black');
insert into laptop values (3,'dell',200);
insert into laptop values (4,'dell',200);

select DEPARTMENT_NAME,END_DATE from DEPARTMENTS d  left join JOB_HISTORY JH on d.DEPARTMENT_ID = JH.DEPARTMENT_ID where END_DATE is not null  ;
select JOB_ID,JOB_TITLE from JOBS;