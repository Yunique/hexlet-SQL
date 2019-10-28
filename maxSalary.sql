// Create two tables - "departments" and "employees" and fill them in.
// Write SQL query to find the highest salary in each department.

CREATE TABLE departments (
  id integer primary key,
  name varchar(10)
);

CREATE TABLE employees (
  id integer primary key,
  name varchar(10),
  salary integer,
  department_id integer
);

INSERT INTO departments (id, name) VALUES
(1, 'IT'),
(2, 'Sales'),
(3, 'Marketing');



INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Joe', 70000, 1),
(2, 'Henry', 80000, 2),
(3, 'Sam', 60000, 2),
(4, 'Max', 90000, 1),
(5, 'Mary', 100000, 2),
(6, 'Ada', 80000, 1),
(7, 'Sherlock', 100000, 2),
(8, 'John', 50000, 3);

SELECT departments.name AS name, MAX(employees.salary) AS salary 
FROM departments JOIN employees ON departments.id = employees.department_id
GROUP BY departments.name
ORDER BY name DESC;
