select * from EMPLOYEES;
create table ScrumTeam (
     Emp_Id Integer PRIMARY KEY ,
     FirstName varchar(30) not null ,
     LastName varchar(30),
     JobTitle varchar(20)
);

select * from SCRUMTEAM;
insert into SCRUMTEAM(emp_id, firstname, lastname, jobtitle) values (1,'Serdar','Fesli','SDET');
insert into SCRUMTEAM values (2,'Ali','Veli','Dev');
insert into SCRUMTEAM values (3,'Cihan','Demir','ScrumMaster');
insert into SCRUMTEAM values (4,'Ahmet','Kara','Dev');
update SCRUMTEAM set JOBTITLE='Tester' where EMP_ID=4;
delete from SCRUMTEAM where EMP_ID=4;
insert into SCRUMTEAM values (7,'Mehmet','Kara','Dev');
insert into SCRUMTEAM values (5,'Selim','Kara','Dev');
insert into SCRUMTEAM values (6,'Mahmut','Kara','Dev');

select * from SCRUMTEAM;
alter table SCRUMTEAM add salary INTEGER;
update SCRUMTEAM set SALARY= 100;
alter table SCRUMTEAM rename column salary to annual_salary;
alter table SCRUMTEAM drop column annual_salary;
alter table SCRUMTEAM rename to AgileTeam;

truncate table AGILETEAM;
drop table AGILETEAM;
select * from AGILETEAM;