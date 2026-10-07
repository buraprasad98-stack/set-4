SELECT *
FROM Employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Employee
);
CREATE VIEW Employee_Details AS
SELECT Emp_ID, Emp_Name, Department, Salary, City
FROM Employee;
SELECT * FROM Employee_Details;
SELECT S.Student_ID, S.Student_Name
FROM Student S
JOIN Enrollment E
ON S.Student_ID = E.Student_ID
WHERE E.Course_ID = 101;
GRANT SELECT
ON University.Employee
TO 'user1'@'localhost';
REVOKE SELECT
ON University.Employee
FROM 'user1'@'localhost';