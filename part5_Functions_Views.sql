CREATE OR REPLACE FUNCTION
calculate_annual_bonus(employeeid INT, salary DECIMAL)
RETURNS DECIMAL
LANGUAGE PLpgSQL
AS $$
BEGIN
	RETURN salary*0.10;
END;
$$;

SELECT
	employees.firstname,
	employees.lastname,
	employees.salary,
	calculate_annual_bonus(employeeid, salary) AS bonus
FROM employees;

CREATE VIEW it_department_view AS
SELECT
	employeeid,
	firstname,
	lastname,
	salary
FROM employees
WHERE department='IT';

SELECT *
FROM it_department_view;