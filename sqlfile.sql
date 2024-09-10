create database Gomycode

create table student(
student_id int primary key,
student_name varchar(50) not null,
age int check(age >=18),
date_of_reg date default getdate(),
department_id int
)



select * from student

create table department(
department_id int primary key,
department_name varchar(30)
)

select * from department


alter table department
add constraint unique_departmentname unique (department_name)

alter table student
add contact varchar(12) unique 

insert into student
values(21,'rice',22,'2024-09-06',24,'08082283592')

select * from student
truncate table student