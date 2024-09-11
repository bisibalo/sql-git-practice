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

--inserting into the department table 
INSERT INTO department(department_id,department_name)
VALUES (1,'computer science'),
       (2,'mathematics'),
	   (3,'french')


--inserting with default date 

INSERT INTO student(student_id,student_name,age,department_id,contact)
values(6,'bisi',22,19,080231452434),
      (7,'ruth',23,11,080231452434),
	  (8,'sola',29,12,080231452434)

--updating values 
--multiple values update 
UPDATE student
SET department_id=3
WHERE student_id in (4,5);

--single values update
UPDATE student
SET contact='012345678'
WHERE student_id=2

--use case statemet to update mulitple rows 
UPDATE student
SET contact = CASE
WHEN student_id=3 THEN '08023222608'
WHEN student_id=7 THEN '08000000000'
ELSE contact 
END
WHERE student_id IN (3,7)