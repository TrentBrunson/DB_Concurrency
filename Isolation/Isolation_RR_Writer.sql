----------------------------------------------
-- PostgreSQL DML Playbook -------------------
-- Ami Levin, Pluralsight, March 2019 --------
-- Rev 1.0 - Initial Release -----------------
----------------------------------------------
-- Module 5 - ANSI Isolation Levels ----------
----------------------------------------------
-- REPEATABLE READ - TRANSACTION B - WRITER --
----------------------------------------------

BEGIN TRANSACTION;




UPDATE 	Employees
SET		Salary = 57000
WHERE	Employee = 'Jack';

COMMIT TRANSACTION;





-- Revert
UPDATE 	Employees
SET		Salary = 49000
WHERE	Employee = 'Jack';

-- END