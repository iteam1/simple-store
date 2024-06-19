-- Creating tables
CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    emp_salary NUMERIC(10, 2),
    dept_id INT REFERENCES department(dept_id)
);

-- Inserting sample data
INSERT INTO department (dept_name) VALUES
    ('IT'),
    ('HR'),
    ('Finance');

INSERT INTO employee (emp_name, emp_salary, dept_id) VALUES
    ('John Doe', 50000.00, 1),
    ('Jane Smith', 60000.00, 1),
    ('Michael Johnson', 55000.00, 2),
    ('Emily Davis', 58000.00, NULL);  -- Employee with no department

-- Using a subquery
select emp_id, emp_name from employee
	where emp_salary = (select max(emp_salary) from employee);

-- Creating a view
create view emp_view as
select emp_name, dept_name
from employee
left join department on employee.dept_id = department.dept_id;

-- Example of INNER JOIN
SELECT emp_name, emp_salary, dept_name
FROM employee
INNER JOIN department ON employee.dept_id = department.dept_id;

-- Example of LEFT OUTER JOIN
SELECT emp_name, emp_salary, dept_name
FROM employee
LEFT JOIN department ON employee.dept_id = department.dept_id;

-- Example of RIGHT OUTER JOIN
SELECT emp_name, emp_salary, dept_name
FROM employee
RIGHT JOIN department ON employee.dept_id = department.dept_id;

-- Example of FULL OUTER JOIN
SELECT emp_name, emp_salary, dept_name
FROM employee
FULL JOIN department ON employee.dept_id = department.dept_id;
