-- 1. Employees and Their Managers

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.emp_id;


-- 2. Employees and Their Departments

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id;


-- 3. Employees Reporting to Managers

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
    ON e.manager_id = m.emp_id;


-- 4. Total Salary by Employee and Department

SELECT
    d.dept_name,
    e.emp_name,
    SUM(s.salary) AS total_salary
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id
LEFT JOIN salaries s
    ON e.emp_id = s.emp_id
GROUP BY d.dept_name, e.emp_name;


-- 5. Employees Without Departments

SELECT
    e.emp_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id
WHERE e.dept_id IS NULL;


-- 6. Employees and Their Projects

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
    ON e.emp_id = p.emp_id;


-- 7. Employees Who Completed Projects

SELECT DISTINCT
    e.emp_name,
    p.project_name
FROM employees e
INNER JOIN project_assignments pa
    ON e.emp_id = pa.emp_id
INNER JOIN projects p
    ON pa.project_id = p.project_id
WHERE pa.status = 'Completed';


-- 8. Employees and Projects (Include All Projects)

SELECT
    e.emp_name,
    p.project_name
FROM employees e
RIGHT JOIN projects p
    ON e.emp_id = p.emp_id;


-- 9. Employees and Salaries

SELECT
    e.emp_name,
    s.salary
FROM employees e
LEFT JOIN salaries s
    ON e.emp_id = s.emp_id;


-- 10. Employees and Department Names

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id;


-- 11. All Departments and Employees

SELECT
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id;


-- 12. Employees With Contact Information

SELECT
    e.emp_name,
    c.phone,
    c.email
FROM employees e
LEFT JOIN contacts c
    ON e.emp_id = c.emp_id;


-- 13. Employees and Departments (Full Outer Join)

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
FULL OUTER JOIN departments d
    ON e.dept_id = d.dept_id;


-- 14. Employees Without Completed Projects

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN project_assignments pa
    ON e.emp_id = pa.emp_id
LEFT JOIN projects p
    ON pa.project_id = p.project_id
WHERE e.emp_id NOT IN (
    SELECT emp_id
    FROM project_assignments
    WHERE status = 'Completed'
);


-- 15. Employees and Their Projects

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
    ON e.emp_id = p.emp_id;


-- 16. All Projects and Assigned Employees

SELECT
    p.project_name,
    e.emp_name
FROM projects p
LEFT JOIN employees e
    ON p.emp_id = e.emp_id;


-- 17. Employees With Managers and Projects

SELECT
    e.emp_name,
    m.emp_name AS manager_name,
    p.project_name
FROM employees e
INNER JOIN employees m
    ON e.manager_id = m.emp_id
INNER JOIN projects p
    ON e.emp_id = p.emp_id;


-- 18. Employees With Departments Only

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN departments d
    ON e.dept_id = d.dept_id;


-- 19. Employees in Multiple Departments

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
INNER JOIN employee_departments ed
    ON e.emp_id = ed.emp_id
INNER JOIN departments d
    ON ed.dept_id = d.dept_id
WHERE e.emp_id IN (
    SELECT emp_id
    FROM employee_departments
    GROUP BY emp_id
    HAVING COUNT(DISTINCT dept_id) > 1
);


-- 20. Departments and Employees

SELECT
    d.dept_name,
    e.emp_name
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id;


-- 21. Employees With Projects but No Department

SELECT DISTINCT
    e.emp_name
FROM employees e
INNER JOIN projects p
    ON e.emp_id = p.emp_id
WHERE e.dept_id IS NULL;


-- 22. Employee Count by Department

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


-- 23. Employees Reporting to Managers

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
INNER JOIN employees m
    ON e.manager_id = m.emp_id;


-- 24. All Employees and Their Managers

SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.emp_id;


-- 25. Department-wise Employee Count

SELECT
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


-- 26. Employees and Departments

SELECT
    e.emp_name,
    d.dept_name
FROM departments d
LEFT JOIN employees e
    ON d.dept_id = e.dept_id;


-- 27. Employees Without Salary Records

SELECT
    e.emp_name
FROM employees e
LEFT JOIN salaries s
    ON e.emp_id = s.emp_id
WHERE s.emp_id IS NULL;


-- 28. Employees and Project Assignments

SELECT
    e.emp_name,
    p.project_name
FROM employees e
LEFT JOIN projects p
    ON e.emp_id = p.emp_id;


-- 29. Employees With Department and Project Assignments

SELECT
    e.emp_name,
    d.dept_name,
    p.project_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id
LEFT JOIN projects p
    ON e.emp_id = p.emp_id;


-- 30. Employees With/Without Departments

SELECT
    e.emp_name,
    d.dept_name
FROM employees e
LEFT JOIN departments d
    ON e.dept_id = d.dept_id;