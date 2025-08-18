CREATE ROLE PostgreSQL;

CREATE USER hr_user
WITH PASSWORD '1234';

GRANT PostgreSQL TO hr_user;

GRANT SELECT ON employees
TO PostgreSQL;

GRANT INSERT, UPDATE ON employees
TO PostgreSQL;

GRANT USAGE, SELECT, UPDATE ON SEQUENCE
employees_employeeid_seq
TO PostgreSQL;

-- Test

SELECT *
FROM employees;

INSERT INTO employees (firstname, lastname, department, salary, email)
VALUES
	('Pavel', 'Durov', 'IT', 2281337, 'ceo@telegram.com');

UPDATE employees
SET email='ceoDurov@telegram.com'
WHERE employees.firstname='Pavel' AND employees.lastname='Durov';