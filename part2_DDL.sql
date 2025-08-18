CREATE TABLE departments (
	departmentid SERIAL PRIMARY KEY,
	departmentname VARCHAR(50) UNIQUE NOT NULL,
	LOCATION VARCHAR(50)
);

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

UPDATE Employees
SET Email = CASE
	WHEN FirstName = 'Alice' AND LastName = 'Smith'
		THEN 'smith1337@gmail.com'
	WHEN FirstName = 'Bob' AND LastName = 'Johnson'
		THEN 'bobjohn1984@yahoo.com'
	WHEN FirstName = 'Charlie' AND LastName = 'Brown'
		THEN 'brownbearcharlie@gmail.com'
	WHEN FirstName = 'Diana' AND LastName = 'Prince'
		THEN 'princessdiana@proton.me'
	WHEN FirstName = 'Eve' AND LastName = 'Davis'
		THEN 'davie2002@tutamail.de'
	WHEN FirstName = 'Frank' AND LastName = 'Miller'
		THEN 'Miller13213@mail.ru'
	WHEN FirstName = 'Grace' AND LastName = 'Lee'
		THEN 'generalLee@amazon.com'
	END;

ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE departments
RENAME COLUMN location TO officelocation;