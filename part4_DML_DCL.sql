UPDATE employees
SET salary=salary*1.1
WHERE department='HR';

UPDATE employees
SET department='Senior IT'
WHERE salary>70000;

DELETE FROM employees
WHERE NOT EXISTS
	(SELECT *
	FROM employeeprojects
	WHERE employeeprojects.employeeid=employees.employeeid);

BEGIN;

WITH newproject AS (
    INSERT INTO projects (projectname, budget, startdate, enddate)
    VALUES ('Machine Learning', 300000, '2025-08-17', '2025-12-31')
    RETURNING projectid
	)
INSERT INTO employeeprojects (employeeid, projectid, hoursworked)
SELECT
	employeeid,
	projectid,
	50
FROM employees
CROSS JOIN newproject
LIMIT 2;

COMMIT;