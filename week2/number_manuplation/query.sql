-- ABS – Absolute Value

SELECT ABS(-100);


-- ROUND – Round to Decimals

SELECT ROUND(base_salary, 0)
FROM employee_salary;

SELECT ROUND(base_salary, 2)
FROM employee_salary;


-- CEILING / CEIL – Round Up

SELECT CEIL(base_salary)
FROM employee_salary;


-- FLOOR – Round Down

SELECT FLOOR(base_salary)
FROM employee_salary;


-- TRUNCATE – Cut Decimals (No Rounding)

SELECT TRUNCATE(base_salary, 1)
FROM employee_salary;


-- MOD – Remainder

SELECT MOD(experience_years, 2)
FROM employee_salary;


-- POWER / POW – Exponent

SELECT POWER(2, 3);

SELECT POW(5, 2);


-- SQRT – Square Root

SELECT SQRT(64);


-- SIGN – Sign of Number

SELECT SIGN(base_salary)
FROM employee_salary;


-- RAND – Random Number

SELECT RAND();


-- FORMAT – Format Number as String

SELECT FORMAT(base_salary, 2)
FROM employee_salary;


-- GREATEST – Maximum Value

SELECT
    emp_name,
    GREATEST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;


-- LEAST – Minimum Value

SELECT
    emp_name,
    LEAST(base_salary, IFNULL(bonus, 0))
FROM employee_salary;