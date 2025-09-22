CREATE DATABASE SQLREVISION;

USE SQLREVISION;

-- schema for Employee table
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


-- schema for Departments
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


-- schema for projects
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2)
);


-- schema for employee_projects
CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id)
);

-- schema for orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20)
);