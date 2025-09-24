# MySQL Revision Practice

A comprehensive collection of MySQL questions commonly asked in fresher-level interviews. Practice these questions to build your SQL fundamentals!

## 📊 Sample Database Schema

### Table: employees
```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    manager_id INT
);

INSERT INTO employees VALUES 
(1, 'John', 'Doe', 'john.doe@company.com', 1, 50000.00, '2020-01-15', NULL),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 2, 60000.00, '2019-03-20', 1),
(3, 'Mike', 'Johnson', 'mike.j@company.com', 1, 45000.00, '2021-06-10', 1),
(4, 'Sarah', 'Williams', 'sarah.w@company.com', 3, 55000.00, '2020-09-05', 2),
(5, 'David', 'Brown', 'david.b@company.com', 2, 48000.00, '2022-01-12', 2);
```

### Table: departments
```sql
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments VALUES 
(1, 'Engineering', 'New York'),
(2, 'Marketing', 'Los Angeles'),
(3, 'Sales', 'Chicago'),
(4, 'HR', 'Boston');
```

### Table: projects
```sql
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2)
);

INSERT INTO projects VALUES 
(1, 'Website Redesign', '2023-01-01', '2023-06-30', 100000.00),
(2, 'Mobile App', '2023-03-15', '2023-12-31', 150000.00),
(3, 'Data Migration', '2023-02-01', '2023-08-15', 75000.00);
```

### Table: employee_projects
```sql
CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id)
);

INSERT INTO employee_projects VALUES 
(1, 1, 120),
(1, 2, 80),
(2, 1, 100),
(3, 2, 150),
(4, 3, 90);
```

### Table: orders
```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20)
);

INSERT INTO orders VALUES 
(1, 101, '2023-01-15', 250.50, 'completed'),
(2, 102, '2023-01-16', 180.00, 'pending'),
(3, 101, '2023-01-17', 320.75, 'completed'),
(4, 103, '2023-01-18', 95.25, 'cancelled'),
(5, 102, '2023-01-19', 450.00, 'completed');
```

---

## 🎯 Practice Questions

### Basic SELECT Statements
- [X] 1. Write a query to select all columns from the employees table.
- [X] 2. Select only the first_name and last_name from employees.
- [X] 3. Select all employees from department_id = 1.
- [ ] 4. Find all employees with salary greater than 50000.
- [ ] 5. Select employees hired after '2020-01-01'.

### WHERE Clause & Conditions
- [ ] 6. Find employees whose first name starts with 'J'.
- [ ] 7. Select employees with salary between 45000 and 55000.
- [ ] 8. Find employees who don't have a manager (manager_id IS NULL).
- [ ] 9. Select employees from either 'Engineering' or 'Marketing' departments.
- [ ] 10. Find employees with email containing 'company.com'.

### ORDER BY & LIMIT
- [ ] 11. Select all employees ordered by salary in descending order.
- [ ] 12. Find the top 3 highest paid employees.
- [ ] 13. Select employees ordered by hire_date (oldest first).
- [ ] 14. Get employees ordered by department_id, then by salary descending.
- [ ] 15. Select the newest hired employee.

### Aggregate Functions
- [ ] 16. Count the total number of employees.
- [ ] 17. Find the average salary of all employees.
- [ ] 18. Get the maximum salary in the company.
- [ ] 19. Find the minimum hire date.
- [ ] 20. Calculate the sum of all employee salaries.

### GROUP BY & HAVING
- [ ] 21. Count employees in each department.
- [ ] 22. Find average salary by department.
- [ ] 23. Get departments with more than 1 employee.
- [ ] 24. Find the highest salary in each department.
- [ ] 25. Count employees hired each year.

### JOINS
- [ ] 26. Join employees and departments to show employee names with department names.
- [ ] 27. Left join employees with departments (include employees without departments).
- [ ] 28. Find employees and their managers' names.
- [ ] 29. Show employees with their project details.
- [ ] 30. Count how many employees work in each department (using JOIN).

### Subqueries
- [ ] 31. Find employees with salary higher than the average salary.
- [ ] 32. Select employees from the department with the highest average salary.
- [ ] 33. Find employees who work on more than one project.
- [ ] 34. Get the second highest salary.
- [ ] 35. Find employees who earn more than their manager.

### String Functions
- [ ] 36. Concatenate first_name and last_name as full_name.
- [ ] 37. Convert all first names to uppercase.
- [ ] 38. Find the length of each employee's email.
- [ ] 39. Extract the domain from email addresses.
- [ ] 40. Replace 'company.com' with 'newcompany.com' in emails.

### Date Functions
- [ ] 41. Find employees hired in 2020.
- [ ] 42. Calculate years of experience for each employee.
- [ ] 43. Get employees hired in the last 2 years.
- [ ] 44. Find the day of the week when each employee was hired.
- [ ] 45. Get employees hired in January.

### CASE Statements
- [ ] 46. Categorize salaries as 'High' (>55000), 'Medium' (45000-55000), 'Low' (<45000).
- [ ] 47. Create a column showing 'Senior' for employees hired before 2021, 'Junior' otherwise.
- [ ] 48. Show 'Has Manager' or 'No Manager' based on manager_id.
- [ ] 49. Categorize departments as 'Tech' or 'Non-Tech'.
- [ ] 50. Create salary grades (A, B, C) based on salary ranges.

### Data Modification (INSERT, UPDATE, DELETE)
- [ ] 51. Insert a new employee into the employees table.
- [ ] 52. Update the salary of employee with emp_id = 3 to 47000.
- [ ] 53. Delete all employees from department_id = 4.
- [ ] 54. Update email domain for all employees.
- [ ] 55. Insert multiple employees in one query.

### Advanced Queries
- [ ] 56. Find the nth highest salary (e.g., 3rd highest).
- [ ] 57. Rank employees by salary within their department.
- [ ] 58. Find employees with duplicate first names.
- [ ] 59. Calculate running total of salaries.
- [ ] 60. Find gaps in employee IDs.

### Set Operations
- [ ] 61. Find employees who are either in Engineering OR earn more than 50000.
- [ ] 62. Use UNION to combine results from two different queries.
- [ ] 63. Find common elements between two result sets.
- [ ] 64. Use EXCEPT/MINUS to find differences between sets.
- [ ] 65. Combine employee and department data using UNION ALL.

### Window Functions (if supported)
- [ ] 66. Number employees by hire date using ROW_NUMBER().
- [ ] 67. Find salary percentiles using PERCENT_RANK().
- [ ] 68. Calculate running average of salaries.
- [ ] 69. Find the previous employee's salary for each row.
- [ ] 70. Partition employees by department and rank by salary.

### NULL Handling
- [ ] 71. Find employees with missing manager information.
- [ ] 72. Replace NULL manager_id with 'No Manager'.
- [ ] 73. Count non-null values in manager_id column.
- [ ] 74. Find employees where any column has NULL values.
- [ ] 75. Use COALESCE to handle multiple NULL columns.

### Complex Scenarios
- [ ] 76. Find employees who have worked the most hours on projects.
- [ ] 77. Calculate the total project budget per employee.
- [ ] 78. Find departments with no employees.
- [ ] 79. Get the employee with the longest tenure in each department.
- [ ] 80. Find projects with the highest employee participation.

### Performance & Optimization
- [ ] 81. Write a query to find duplicate records in employees table.
- [ ] 82. Create an index on the salary column (write the CREATE INDEX statement).
- [ ] 83. Explain the difference between INNER JOIN and EXISTS.
- [ ] 84. Optimize a query with multiple subqueries.
- [ ] 85. Write a query that would benefit from an index.

### Data Analysis Questions
- [ ] 86. Calculate employee turnover rate by department.
- [ ] 87. Find the month with the highest number of new hires.
- [ ] 88. Calculate the average project duration.
- [ ] 89. Find employees who joined in the same year.
- [ ] 90. Determine the most common hire month.

### Real-world Scenarios
- [ ] 91. Generate a report showing department-wise salary statistics.
- [ ] 92. Find employees eligible for promotion (tenure > 2 years and salary < dept average).
- [ ] 93. Create a query for payroll processing.
- [ ] 94. Generate an employee directory with contact information.
- [ ] 95. Find potential mentorship pairs (senior and junior employees).

### Bonus Challenge Questions
- [ ] 96. Write a stored procedure to calculate annual bonus.
- [ ] 97. Create a view for active employees with their department info.
- [ ] 98. Write a query to detect salary anomalies.
- [ ] 99. Generate a hierarchical employee structure.
- [ ] 100. Create a comprehensive employee performance report.

