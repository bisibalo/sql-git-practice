SELECT * FROM student

ALTER TABLE STUDENT
ADD CONTACT VARCHAR(20)


create table student(
student_id int primary key,
student_name varchar(50) not null,
age int check(age >=18),
date_of_reg date default getdate(),
department_id int
)
--this is how to insert
INSERT INTO student
VALUES(1,'shade',20,'2024-02-14',5,'08082283592'),
	  (2,'Tobi',23,'2024-06-19',10,'08082283592'),
	  (3,'Soji',35,'2024-09-23',15,'08082283592'),
	  (4,'Awwal',42,'2024-07-06',20,'08082283592'),
	  (5,'Emmanuel',31,'2024-11-05',25,'08082283592')

alter table department
drop constraint UQ__student__870C3C8B187E97D8

drop table department

ALTER TABLE student
DROP CONSTRAINT [UQ__student__870C3C8B187E97D8]