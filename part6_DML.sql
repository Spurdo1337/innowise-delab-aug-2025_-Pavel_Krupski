SELECT DISTINCT p.ProjectName
FROM Projects p
JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID
JOIN Employees e ON ep.EmployeeID = e.EmployeeID
WHERE e.FirstName = 'Bob' AND e.LastName = 'Johnson' AND ep.HoursWorked > 150;

UPDATE Projects p
SET Budget = Budget * 1.10
WHERE EXISTS (
    SELECT 1
    FROM EmployeeProjects ep
    JOIN Employees e ON ep.EmployeeID = e.EmployeeID
    WHERE ep.ProjectID = p.ProjectID
      AND e.Department = 'IT'
);

--Test
SELECT ProjectID, ProjectName, Budget FROM Projects ORDER BY ProjectID;

UPDATE Projects
SET EndDate = StartDate + INTERVAL '1 year'
WHERE EndDate is NULL;

--Test
SELECT ProjectID, ProjectName, StartDate, EndDate FROM Projects ORDER BY ProjectID;


BEGIN;
WITH new_emp AS (
    INSERT INTO Employees (FirstName, LastName, Department, Salary, email)
    VALUES ('Greg', 'Miller', 'Design', 50000.00, 'greg228@example.com')
    RETURNING EmployeeID
)
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
SELECT ne.EmployeeID, p.ProjectID, 80
FROM new_emp ne
JOIN Projects p ON p.ProjectName = 'Website Redesign'
;
COMMIT;

--Test
SELECT EmployeeID, FirstName, LastName, Department, Salary, Email
FROM Employees
WHERE FirstName = 'Greg' AND LastName = 'Miller';

SELECT ep.EmployeeID, ep.ProjectID, ep.HoursWorked, p.ProjectName
FROM EmployeeProjects ep
JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE ep.EmployeeID IN (
    SELECT EmployeeID FROM Employees WHERE FirstName = 'Greg' AND LastName = 'Miller'
);