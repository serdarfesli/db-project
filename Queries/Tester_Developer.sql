create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from TESTERS union select *from DEVELOPERS;
select * from TESTERS union all select *from DEVELOPERS;
select names from DEVELOPERS intersect select Names from TESTERS;
create view  DistinctNames as select distinct FIRST_NAME from EMPLOYEES;
select FIRST_NAME,count(FIRST_NAME) from EMPLOYEES group by FIRST_NAME having count(FIRST_NAME)>1;

select * from EMPLOYEES;