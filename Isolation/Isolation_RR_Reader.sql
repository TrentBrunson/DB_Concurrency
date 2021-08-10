----------------------------------------------
-- PostgreSQL DML Playbook -------------------
-- Ami Levin, Pluralsight, March 2019 --------
-- Rev 1.0 - Initial Release -----------------
----------------------------------------------
-- Module 5 - ANSI Isolation Levels ----------
----------------------------------------------
-- REPEATABLE READ - TRANSACTION A - READER --
----------------------------------------------

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT 	*
FROM 	Employees
WHERE	Employee = 'Jack';


SELECT 	*
FROM 	Employees
WHERE	Employee = 'Jack';

COMMIT TRANSACTION;

-- Phantom rows
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT 	*
FROM 	Employees
WHERE	Salary > 50000;


SELECT 	*
FROM 	Employees
WHERE	Salary > 50000;

COMMIT TRANSACTION;

-- END
