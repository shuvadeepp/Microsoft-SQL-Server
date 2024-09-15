/* ::::::::: DAY 3 SQL SERVER CLASS Dt-14-092024 ::::::::: */

USE SEPT_TRAINING_DB;

CREATE TABLE M_STUDENT_TB(
	student_id INT,
	vch_student_name VARCHAR(50),
	vch_address VARCHAR(100)
);

SELECT * FROM M_STUDENT_TB;

INSERT INTO M_STUDENT_TB (student_id, vch_student_name, vch_address)
VALUES (1, 'shuvashree', 'bbsr'), (2, 'shuvadeep', 'bbsr'), (3, 'mrutyunjay', 'keonjhar'), (4, 'shyam', 'puri')

INSERT INTO M_STUDENT_TB (student_id, vch_student_name) VALUES (1, 'anurag')
UPDATE M_STUDENT_TB SET student_id=5 WHERE vch_student_name='anurag';

CREATE TABLE M_STUDENT_TB_BACKUP(
	student_id INT,
	vch_student_name VARCHAR(50),
	vch_address VARCHAR(100)
);

SELECT * FROM M_STUDENT_TB;

INSERT INTO M_STUDENT_TB_BACKUP 
SELECT * FROM M_STUDENT_TB WHERE student_id IN (1, 2);

EXEC sp_rename 'M_STUDENT_TB_BACKUP', 'T_STUDENT_TB_BACKUP'; -- for renameing table.

SELECT * INTO TEMP_STUDENT_TB FROM M_STUDENT_TB; -- This query is copy of another table.
SELECT * INTO TEMP_STUDENT_TB FROM M_STUDENT_TB WHERE 1=0; -- This query is copy of another table but not data condition false.

ALTER TABLE TEMP_STUDENT_TB ADD vch_mobile varchar(10)

SELECT * FROM TEMP_STUDENT_TB;
DROP TABLE TEMP_STUDENT_TB;

TEMP_STUDENT_TB -- press alt + F1 to table information 

ALTER TABLE TEMP_STUDENT_TB ALTER COLUMN vch_address VARCHAR(150) -- column datatype modify query.

UPDATE TEMP_STUDENT_TB SET vch_address='kolkata';


UPDATE TS SET TS.vch_address=MS.vch_address 
FROM TEMP_STUDENT_TB TS
INNER JOIN M_STUDENT_TB MS 
ON TS.student_id = MS.student_id
 
DROP TABLE TEMP_STUDENT_TB;

CREATE TABLE TEMP_STUDENT_TB(
	id int identity(1, 1),
	username varchar(50)
)

SELECT * FROM TEMP_STUDENT_TB;

INSERT INTO TEMP_STUDENT_TB (username ) VALUES ('shuvadeep'), ('aparajita'), ('jyotirmayee'), ('suchitra')

SELECT SCOPE_IDENTITY();

SELECT IDENT_CURRENT('TEMP_STUDENT_TB');

DELETE FROM TEMP_STUDENT_TB WHERE id=4;

TRUNCATE TABLE TEMP_STUDENT_TB;


CREATE TABLE department ( -- Primary table
	d_id int primary key, 
	department_name varchar(50)
)

CREATE TABLE employee (  -- foreign table
	emp_id int primary key, 
	emp_name varchar(50),
	department_id int 
	FOREIGN KEY (department_id) REFERENCES
	department (d_id) 
)


SELECT * FROM department;
SELECT * FROM employee;

INSERT INTO department VALUES (2, 'DOTNET');
INSERT INTO employee VALUES (2, 'Mrutyunjay', 2);

DROP TABLE employeeData;

CREATE TABLE employeeData (  -- UNIQUE table
	emp_id int UNIQUE, 
	emp_name varchar(50),
	department_id int  
)

INSERT INTO employeeData VALUES (1, 'hello', null);

SELECT * FROM employeeData;

DROP TABLE employeeData;

CREATE TABLE employeeData (  -- default constent
	emp_id int UNIQUE, 
	emp_name varchar(50),
	department_id int,
	country varchar(50) DEFAULT 'IND'
)

INSERT INTO employeeData (emp_id, emp_name, department_id) VALUES (1, 'shuvadeep', '1');

SELECT ED.emp_name,D.department_name, ED.country FROM employeeData ED INNER JOIN department D ON ED.emp_id=D.d_id;

CREATE TABLE employeeData (   
	emp_id int, 
	emp_name varchar(50),
	department_id int,
	age int check (age >=18)   -- The CHECK constraint is used to limit the value range that can be placed in a column.
)

SELECT * FROM TEMP_STUDENT_TB;

DELETE FROM TEMP_STUDENT_TB WHERE id=5

SET IDENTITY_INSERT TEMP_STUDENT_TB ON

INSERT INTO TEMP_STUDENT_TB VALUES ('biswanath');