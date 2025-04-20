create database t6;
 
 CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES
(1, 'Ali', 'Khan', 'IT', 60000.00),
(2, 'Fatima', 'Ahmed', 'IT', 65000.00),
(3, 'Ahmed', 'Raza', 'HR', 55000.00),
(4, 'Ayesha', 'Siddiqui', 'HR', 58000.00),
(5, 'Hassan', 'Ali', 'Finance', 70000.00),
(6, 'Sana', 'Zahid', 'Finance', 72000.00);

CREATE PROCEDURE CalculateAvgSalary
    @DepartmentName VARCHAR(50)
AS
BEGIN
    SELECT AVG(Salary) AS AvgSalary
    FROM Employees
    WHERE Department = @DepartmentName;
END;
EXEC CalculateAvgSalary 'IT';

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JoinDate DATE,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO Employee (EmployeeID, FirstName, LastName, JoinDate, Department, Salary) VALUES
(1, 'Ali', 'Khan', '2023-03-15', 'IT', 60000.00),
(2, 'Fatima', 'Ahmed', '2023-05-20', 'IT', 65000.00),
(3, 'Ahmed', 'Raza', '2023-07-10', 'HR', 55000.00),
(4, 'Ayesha', 'Siddiqui', '2023-09-05', 'HR', 58000.00),
(5, 'Hassan', 'Ali', '2023-11-12', 'Finance', 70000.00),
(6, 'Sana', 'Zahid', '2023-12-30', 'Finance', 72000.00);

CREATE PROCEDURE GetEmployeesByJoinDateRange
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT EmployeeID, FirstName, LastName, JoinDate, Department, Salary
    FROM Employee
    WHERE JoinDate BETWEEN @StartDate AND @EndDate;
END;

EXEC GetEmployeesByJoinDateRange '2023-01-01', '2023-12-31';
