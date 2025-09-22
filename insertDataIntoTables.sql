INSERT INTO employees VALUES 
(1, 'John', 'Doe', 'john.doe@company.com', 1, 50000.00, '2020-01-15', NULL),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 2, 60000.00, '2019-03-20', 1),
(3, 'Mike', 'Johnson', 'mike.j@company.com', 1, 45000.00, '2021-06-10', 1),
(4, 'Sarah', 'Williams', 'sarah.w@company.com', 3, 55000.00, '2020-09-05', 2),
(5, 'David', 'Brown', 'david.b@company.com', 2, 48000.00, '2022-01-12', 2);



INSERT INTO departments VALUES 
(1, 'Engineering', 'New York'),
(2, 'Marketing', 'Los Angeles'),
(3, 'Sales', 'Chicago'),
(4, 'HR', 'Boston');


INSERT INTO projects VALUES 
(1, 'Website Redesign', '2023-01-01', '2023-06-30', 100000.00),
(2, 'Mobile App', '2023-03-15', '2023-12-31', 150000.00),
(3, 'Data Migration', '2023-02-01', '2023-08-15', 75000.00);



INSERT INTO employee_projects VALUES 
(1, 1, 120),
(1, 2, 80),
(2, 1, 100),
(3, 2, 150),
(4, 3, 90);


INSERT INTO orders VALUES 
(1, 101, '2023-01-15', 250.50, 'completed'),
(2, 102, '2023-01-16', 180.00, 'pending'),
(3, 101, '2023-01-17', 320.75, 'completed'),
(4, 103, '2023-01-18', 95.25, 'cancelled'),
(5, 102, '2023-01-19', 450.00, 'completed');