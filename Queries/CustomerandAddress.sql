CREATE TABLE address(

address_id Integer PRIMARY KEY,
address VARCHAR(50) NOT NULL,
phone Integer NOT NULL

);


INSERT INTO address (address_id, address, phone) VALUES (5,  '1913 Hanoi Way'  ,  28303384);
INSERT INTO address (address_id, address, phone) VALUES (7,  '692 Joliet Street'  ,  44847719);
INSERT INTO address (address_id, address, phone) VALUES (8,  '1566 Inegl Manor'  ,  70581400);
INSERT INTO address (address_id, address, phone) VALUES (10,  '1795 Santiago '  ,  86045262);
INSERT INTO address (address_id, address, phone) VALUES (11,  '900 Santiago '  ,  16571220);


CREATE TABLE customer(

customer_id Integer PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50)NOT NULL,
address_id Integer REFERENCES address(address_id)

);


INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);


commit work;
select * from customer;

select first_name,last_name,address,phone from customer left join ADDRESS on customer.address_id = address.address_id;
select first_name,last_name,address,phone from customer right join ADDRESS on customer.address_id = address.address_id;
select first_name,last_name,address,phone from customer full join ADDRESS on customer.address_id = address.address_id;
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME from EMPLOYEES full join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;
select * from EMPLOYEES;
select * from LOCATIONS;
select * from DEPARTMENTS;
select * from COUNTRIES;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME from EMPLOYEES e join DEPARTMENTS d
    on e.DEPARTMENT_ID=d.DEPARTMENT_ID
    join LOCATIONS l on d.LOCATION_ID=l.LOCATION_ID join COUNTRIES c on l.COUNTRY_ID=c.COUNTRY_ID;

select e1.FIRST_NAME,e1.last_name,e1.MANAGER_ID,e2.FIRST_NAME,e2.LAST_NAME from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID=e2.EMPLOYEE_ID;
