---------------------------------------------
-- READ COMMITTED - TRANSACTION B - WRITER --
---------------------------------------------

BEGIN TRANSACTION;




UPDATE 	Employees
SET		Salary = 57000
WHERE	Employee = 'Jack';

COMMIT TRANSACTION;





-- REVERT
UPDATE 	Employees
SET		Salary = 49000
WHERE	Employee = 'Jack';

-- END