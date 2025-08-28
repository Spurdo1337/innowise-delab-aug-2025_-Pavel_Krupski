INSERT INTO Employees (FirstName, LastName, Department, Salary) 
VALUES
('Frank', 'Miller', 'IT', 55000.00),
('Grace', 'Lee', 'HR', 90000.00);

SELECT * FROM employees;

SELECT FirstName, LastName
FROM Employees
WHERE Department = 'IT';

UPDATE Employees
SET Salary = 65000.00
WHERE FirstName = 'Alice' AND LastName = 'Smith';

DELETE FROM employeeprojects
WHERE employeeid = (SELECT employeeid FROM employees WHERE lastname='Prince');

DELETE
FROM employees
WHERE employees.lastname='Prince';

SELECT *
FROM employees;