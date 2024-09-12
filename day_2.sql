use SEPT_TRAINING_DB;

CREATE SCHEMA emp;

CREATE TABLE emp.EMPLOYEE(
	emp_id INT PRIMARY KEY,
	emp_name varchar(25),
	emp_mob VARCHAR(10)
);

INSERT INTO emp.EMPLOYEE (emp_id, emp_name, emp_mob) VALUES (1001, 'shuvadeep', 9999999999), (1002, 'shuvashree', 9877777777);

TRUNCATE TABLE emp.EMPLOYEE;

SELECT * FROM emp.EMPLOYEE;

SELECT * FROM dbo.EMPLOYEE;

DROP TABLE dbo.EMPLOYEE;

 

-- STRING:-
	-- CHAR:-
	DECLARE @userName CHAR(5)
	SET @userName = 'SHUVADEEP'
	SELECT @userName
	SELECT DATALENGTH(@userName)
	/* In CHAR we cannot use max() function */

	-- VARCHAR:-
	DECLARE @userName VARCHAR(255)
	SET @userName = 'SHUVADEEP'
	SELECT @userName
	SELECT DATALENGTH(@userName)

	-- NCHAR:-
	DECLARE @userName NCHAR(10)
	SET @userName = N'हिन्दी'
	SELECT @userName
	SELECT DATALENGTH(@userName)

	-- NVARCHAR:-
	DECLARE @userName NVARCHAR(255)
	SET @userName = N'हिन्दी'
	SELECT @userName
	SELECT DATALENGTH(@userName)

-- FLOAT:-
	DECLARE @x float 
	SET @x = 10.216494
	SELECT @x
	SELECT DATALENGTH(@x)

-- DECIMAL:-
	DECLARE @x decimal(5,2)
	SET @x = 10.2685654
	SELECT @x
	SELECT DATALENGTH(@x)

-- DATE
	-- SELECT getdate('DD-MM-YYYY');
	DECLARE @current_date DATETIME
	SET @current_date = '12-09-2024'
	SELECT @current_date
	SELECT DATALENGTH(@current_date)

 
	 