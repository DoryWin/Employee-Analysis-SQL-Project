CREATE DATABASE Employee_Analysis;
USE Employee_Analysis; 

create table EMPLOYEE(
	Emp_no integer PRIMARY KEY not null,
	Emp_name varchar(50) not null,
	Emp_address varchar(100) not null,
	Emp_ph_no varchar(50) not null,
	Emp_joined_date varchar(10) not null,
	Dept_no integer not null,
	Dept_name varchar(10) not null,
	Job_id integer not null, 
	Designation varchar(50) not null, 
	Salary decimal(10,2),
)
 
insert into EMPLOYEE(Emp_no, Emp_name, Emp_address, Emp_ph_no, Emp_joined_date, Dept_no, Dept_name,
Job_id, Designation, Salary)
Values
(1, 'John Doe', '123 Main St', '555-1234', '2022-01-15', 101, 'IT', 1, 'Manager', 80000.00),
(2, 'Jane Smith', '456 Oak St', '555-5678', '2022-02-20', 102, 'HR', 2, 'Analyst', 60000.00),
(3, 'Bob Johnson', '789 Elm St', '555-9101', '2022-03-10', 103, 'Finance', 3, 'Accountant', 70000.00),
(4, 'Alice Williams', '321 Pine St', '555-1111', '2022-04-05', 101, 'IT', 4, 'Developer', 75000.00),
(5, 'Charlie Brown', '654 Birch St', '555-2222', '2022-05-12', 102, 'HR', 5, 'Recruiter', 65000.00),
(6, 'David Davis', '987 Cedar St', '555-3333', '2022-06-18', 103, 'Finance', 6, 'Auditor', 72000.00),
(7, 'Eva Rodriguez', '159 Maple St', '555-4444', '2022-07-23', 101, 'IT', 7, 'Tester', 68000.00),
(8, 'Frank White', '753 Redwood St', '555-5555', '2022-08-30', 102, 'HR', 8, 'Manager', 85000.00),
(9, 'Grace Miller', '246 Elmwood St', '555-6666', '2022-09-05', 103, 'Finance', 9, 'Analyst', 61000.00),
(10, 'Harry Taylor', '369 Oakwood St', '555-7777', '2022-10-10', 101, 'IT', 10, 'Developer', 77000.00),
(11, 'Ivy Turner', '852 Cedarwood St', '555-8888', '2022-11-15', 102, 'HR', 11, 'Recruiter', 67000.00),
(12, 'Jackie Robinson', '753 Elm St', '555-9999', '2022-12-20', 103, 'Finance', 12, 'Auditor', 73000.00),
(13, 'Kevin Brown', '456 Oak St', '555-1122', '2023-01-25', 101, 'IT', 13, 'Tester', 69000.00),
(14, 'Linda Johnson', '987 Pine St', '555-2233', '2023-02-28', 102, 'HR', 14, 'Manager', 88000.00),
(15, 'Mike Evans', '159 Maple St', '555-3344', '2023-03-05', 103, 'Finance', 15, 'Analyst', 62000.00),
(16, 'Nancy Davis', '321 Birch St', '555-4455', '2023-04-10', 101, 'IT', 16, 'Developer', 79000.00),
(17, 'Oliver Smith', '654 Oak St', '555-5566', '2023-05-15', 102, 'HR', 17, 'Recruiter', 66000.00),
(18, 'Patricia White', '753 Redwood St', '555-6677', '2023-06-20', 103, 'Finance', 18, 'Auditor', 74000.00),
(19, 'Quincy Turner', '246 Elmwood St', '555-7788', '2023-07-25', 101, 'IT', 19, 'Tester', 70000.00),
(20, 'Rachel Robinson', '369 Oakwood St', '555-8899', '2023-08-30', 102, 'HR', 20, 'Manager', 90000.00);
 
--1. Calculate the average salary of employees who joined the company in the year 2022
SELECT AVG(Salary) AS AverageSalary
FROM EMPLOYEE 
WHERE YEAR(Emp_joined_date) = 2022;
 
--2. Display the first three characters of each employee's name and concatenate it with the last two characters of their phone number.
SELECT Emp_name, LEFT(Emp_name,3) + RIGHT(Emp_ph_no,2) AS ConcanatedInfo
FROM EMPLOYEE;
 
--3. Convert the Designation column to lowercase for all employees in the 'IT' department
SELECT Emp_name, LOWER(Designation) AS LowercaseDesignation FROM EMPLOYEE
WHERE Dept_name = 'IT';

 
--4. Show the Emp_name and the total number of characters in their address for employees with a salary above 70000.00.
SELECT Emp_name, LEN(Emp_address) AS addressLength 
FROM EMPLOYEE 
WHERE Salary > 70000;
 
--5. Calculate the annual salary increase for each employee, assuming a fixed 5% raise. Display Emp_name, Salary, and the updated salary.
SELECT Emp_name, Salary, Salary * 1.05 AS UpdatedSalary FROM EMPLOYEE;
 
--6. Determine the bonus for employees based on their salary. The bonus is 8% of the salary. Display Emp_name, Salary, and the bonus
SELECT Emp_name, Salary, Salary * 0.08 AS Bonus FROM EMPLOYEE;
 
--7. Assume that overtime pay is 15% of the salary. Calculate the overtime pay for each employee and display Emp_name and the overtime pay.
SELECT Emp_name, Salary, Salary * 0.15 AS OvertimePay FROM EMPLOYEE;
 
--8. Display the Emp_name and the salary doubled for employees in the 'IT' department.
SELECT Emp_name, Salary *2 AS DoublesSalary
FROM EMPLOYEE 
WHERE Dept_name ='IT';
 
--9. Create a query to concatenate Emp_name, Designation, and Dept_name for each employee. Add '-' (dash) to separate Emp_name, Designation, and Dept_name
SELECT CONCAT(Emp_name, '-' + Designation + '-', Dept_name) AS FullInfo
FROM EMPLOYEE;
 
--10. Display Emp_name, Designation (in uppercase), and Dept_name (in lowercase).
SELECT Emp_name, UPPER(Designation) AS DesignationUpper, LOWER(Dept_name) AS DeptnameLower
FROM EMPLOYEE;
 
--11. Write a query to convert the Salary column to an integer for all employees. Display Emp_name and the converted integer salary.
SELECT Emp_name, CAST(Salary AS INT) AS IntergerSalary
FROM EMPLOYEE;
 
--12. Convert Emp_no to a string and append (put) 'Emp' in front of each employee number. Display Emp_name and the converted string.
SELECT Emp_no, CONCAT('Emp', Cast(Emp_no AS VARCHAR)) AS ModifiedEmpNo
FROM EMPLOYEE;