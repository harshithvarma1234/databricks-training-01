-- ROW_NUMBER() Questions

-- 1. Assign row number based on highest salary

SELECT
    emp_id,
    emp_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;


-- 2. Row number within department based on salary descending

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM employees;


-- 3. Row number based on latest joining date

SELECT
    emp_id,
    emp_name,
    join_date,
    ROW_NUMBER() OVER (ORDER BY join_date DESC) AS row_num
FROM employees;


-- 4. Row number within department based on earliest joining date

SELECT
    emp_id,
    emp_name,
    department,
    join_date,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY join_date ASC
    ) AS row_num
FROM employees;


-- 5. Row number based on order date

SELECT
    emp_id,
    emp_name,
    join_date,
    ROW_NUMBER() OVER (ORDER BY join_date) AS row_num
FROM employees;


-- 6. Row number within city based on highest salary

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM employees;


-- 7. Row number based on lowest salary

SELECT
    emp_id,
    emp_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary ASC) AS row_num
FROM employees;


-- 8. Row number within department based on employee name

SELECT
    emp_id,
    emp_name,
    department,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY emp_name ASC
    ) AS row_num
FROM employees;


-- RANK() Questions

-- 9. Rank employees based on highest salary

SELECT
    emp_id,
    emp_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS emp_rank
FROM employees;


-- 10. Rank employees within department based on salary

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS emp_rank
FROM employees;


-- 11. Rank employees based on latest joining date

SELECT
    emp_id,
    emp_name,
    join_date,
    RANK() OVER (ORDER BY join_date DESC) AS emp_rank
FROM employees;


-- 12. Rank employees based on highest salary

SELECT
    emp_id,
    emp_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS emp_rank
FROM employees;


-- 13. Rank employees within department based on salary

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS emp_rank
FROM employees;


-- 14. Rank employees within department based on lowest salary

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary ASC
    ) AS emp_rank
FROM employees;


-- 15. Rank employees alphabetically

SELECT
    emp_id,
    emp_name,
    RANK() OVER (ORDER BY emp_name ASC) AS emp_rank
FROM employees;


-- 16. Rank employees within department based on joining date

SELECT
    emp_id,
    emp_name,
    department,
    join_date,
    RANK() OVER (
        PARTITION BY department
        ORDER BY join_date ASC
    ) AS emp_rank
FROM employees;


-- DENSE_RANK() Questions

-- 17. Dense rank employees based on highest salary

SELECT
    emp_id,
    emp_name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_num
FROM employees;


-- 18. Dense rank within department based on salary

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_rank_num
FROM employees;


-- 19. Dense rank based on joining date

SELECT
    emp_id,
    emp_name,
    join_date,
    DENSE_RANK() OVER (ORDER BY join_date DESC) AS dense_rank_num
FROM employees;


-- 20. Dense rank based on salary

SELECT
    emp_id,
    emp_name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_num
FROM employees;


-- 21. Dense rank within department based on salary

SELECT
    emp_id,
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_rank_num
FROM employees;


-- 22. Dense rank based on lowest salary

SELECT
    emp_id,
    emp_name,
    salary,
    DENSE_RANK() OVER (ORDER BY salary ASC) AS dense_rank_num
FROM employees;


-- 23. Dense rank within department based on joining date

SELECT
    emp_id,
    emp_name,
    department,
    join_date,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY join_date ASC
    ) AS dense_rank_num
FROM employees;


-- 24. Dense rank based on order date

SELECT
    emp_id,
    emp_name,
    join_date,
    DENSE_RANK() OVER (ORDER BY join_date ASC) AS dense_rank_num
FROM employees;