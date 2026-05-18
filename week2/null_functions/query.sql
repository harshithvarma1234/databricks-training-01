-- LEVEL 1

-- Show all employees whose salary is NULL

SELECT *
FROM Employees
WHERE salary IS NULL;


-- Show all orders where discount is NOT NULL

SELECT *
FROM Orders
WHERE discount IS NOT NULL;


-- Get products where category is NULL

SELECT *
FROM Products
WHERE category IS NULL;


-- Count number of employees with NULL manager_id

SELECT COUNT(*) AS null_manager_count
FROM Employees
WHERE manager_id IS NULL;


-- LEVEL 2

-- Replace NULL salary with 0

SELECT
    emp_id,
    name,
    IFNULL(salary, 0) AS salary
FROM Employees;


-- Replace NULL bonus with 1000

SELECT
    emp_id,
    name,
    IFNULL(bonus, 1000) AS bonus
FROM Employees;


-- Show order amount, if NULL replace with 500

SELECT
    order_id,
    customer_name,
    IFNULL(amount, 500) AS amount
FROM Orders;


-- Replace NULL stock with 0

SELECT
    product_id,
    product_name,
    IFNULL(stock, 0) AS stock
FROM Products;


-- LEVEL 3

-- Show employee earnings using salary, if NULL use bonus

SELECT
    emp_id,
    name,
    COALESCE(salary, bonus) AS earnings
FROM Employees;


-- Show first available value salary → bonus → 0

SELECT
    emp_id,
    name,
    COALESCE(salary, bonus, 0) AS income
FROM Employees;


-- Show product price price → 1000

SELECT
    product_id,
    product_name,
    COALESCE(price, 1000) AS final_price
FROM Products;


-- Get customer payment amount → discount → 0

SELECT
    order_id,
    customer_name,
    COALESCE(amount, discount, 0) AS payment
FROM Orders;


-- LEVEL 4

-- Convert salary to NULL if salary = 0

SELECT
    emp_id,
    name,
    NULLIF(salary, 0) AS salary
FROM Employees;


-- Convert discount to NULL if discount = 0

SELECT
    order_id,
    NULLIF(discount, 0) AS discount
FROM Orders;


-- Use NULLIF to avoid divide by zero

SELECT
    amount / NULLIF(discount, 0) AS result
FROM Orders;


-- Replace coupon_code with NULL if it is 'DISC10'

SELECT
    order_id,
    NULLIF(coupon_code, 'DISC10') AS coupon_code
FROM Orders;


-- LEVEL 5

-- Calculate total earnings salary + bonus

SELECT
    emp_id,
    name,
    IFNULL(salary, 0) + IFNULL(bonus, 0) AS total_earnings
FROM Employees;


-- Show employees where both salary AND bonus are NULL

SELECT *
FROM Employees
WHERE salary IS NULL
AND bonus IS NULL;


-- Show products where price is NULL but category is NOT NULL

SELECT *
FROM Products
WHERE price IS NULL
AND category IS NOT NULL;


-- Show orders where both amount and discount are NULL

SELECT *
FROM Orders
WHERE amount IS NULL
AND discount IS NULL;


-- LEVEL 6

-- Show employee income using COALESCE

SELECT
    emp_id,
    name,
    COALESCE(salary, bonus, 1000) AS income
FROM Employees;


-- Replace empty discount with NULL using NULLIF

SELECT
    order_id,
    NULLIF(discount, 0) AS final_discount
FROM Orders;


-- Show final payable amount amount - discount

SELECT
    order_id,
    customer_name,
    IFNULL(amount, 0) - IFNULL(discount, 0) AS payable_amount
FROM Orders;


-- Find employees where salary is NULL but manager exists

SELECT *
FROM Employees
WHERE salary IS NULL
AND manager_id IS NOT NULL;