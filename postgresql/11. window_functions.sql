SET search_path TO doc;
--let's create & populate some table first
CREATE TABLE empsalary(
	depname		varchar(25),
	empno		int,
	salary		int
);
INSERT INTO empsalary VALUES
	('develop', 11, 5200),
	('personnel', 5, 3500),
	('sales', 3, 4800),
	('develop', 7, 4200),
	('personnel', 2, 3900),
	('sales', 1, 5000),
	('develop', 9, 4500),
	('sales', 4, 4800),
	('develop', 8, 6000),
	('develop', 10, 5200);

SELECT depname, empno, salary, 
AVG(salary) OVER(PARTITION BY depname) FROM empsalary;

SELECT depname, empno, salary, rank()
	OVER (PARTITION BY depname ORDER BY salary DESC)
FROM empsalary; --rank() produces a numerical rank for each distinct ORDER BY value within the "windows"

