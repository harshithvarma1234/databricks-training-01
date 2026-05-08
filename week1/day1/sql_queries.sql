-- in this file we will write all the sql queries that we will use to interact with the database

-- 1. select all columns from the employee table
select * from Employee;

-- 2. select name and salary from the employee table

select name,salary from Employee;

-- 3. selectemployees who are older than 30 years

 select name from Employee where age>30;

 -- 4. select names of all departments

 select name from Department;

 -- 5.select employees who work in the IT department
  select name from Employee where department_id=1;

-- 6. select emplyees whose names start with 'j'
select name from Employee where name like 'j%';

--7 select emplyees whose names end with 'e'
select name from Employee where name like '%e';

--8. select employees whose names contain 'a'
select name from Employee where name like '%a%';

--9 select employees whose names are exactly 9 characters long
select name from Employee where length(name) = 9;

--10 select emplyees whose names have 'o' as second character
select name from Employee where name like '_o%';

--11 select employees hired in the year 2020
select name from Employee where hire_date like '2020%';

--12 select employees hired in january of any year
select name from Employee where hire_date like '%-01-%';

--13 select employees hired on after  march 1 ,2021
select name from Employee where hire_date > '2021-03-01';

--14 select employees hired in last 2 years
select name from Employee where hire_date > '2024-01-01';

-- 15 select total salary of all employees
select sum(salary) from Employee;


-- 16. select the average salary for employees
select avg(salary) from Employee;

--17 select the minimum salary in employee table
select min(salary) from Employee;

--18 select number of employees in the each department
select department_id, count(*) from Employee group by department_id;

--19 select the average salary for each department
select department_id, avg(salary) from Employee group by department_id;

--20 select the total salary for each department
select department_id, sum(salary) from Employee group by department_id;

-- 21 select the average of employee age in each department
select department_id, avg(age) from Employee group by department_id;

--22 select the number of employyes hired in each year
select year(hire_date), count(*) from Employee group by year(hire_date);

--23 select the highest salary in the each department
select department_id, max(salary) from Employee group by department_id;

--24 select the departmet which has the highest average salary
select department_id, avg(salary) from Employee group by department_id order by avg(salary) desc limit 1;

--25 select departments which have more than 2 employees
select department_id, count(*) from Employee group by department_id having count(*) > 2;

--26 select depaartments with highest average salary greater than 55000
select department_id, avg(salary) from Employee group by department_id having avg(salary) > 55000;

--27 select years whith more than 1 employee hired
select year(hire_date), count(*) from Employee group by year(hire_date) having count(*) > 1;

--28 select departments with total salary expense less than 100000
select department_id, sum(salary) from Employee group by department_id having sum(salary) < 100000;

--29 select departments with maximum salary above 75000
select department_id, max(salary) from Employee group by department_id having max(salary) > 75000;

--30 select all employees ordered by their salary in descending order
select * from Employee order by salary desc;

--31 select all employees ordered by age in descending order
select * from Employee order by age desc;

--32 select employyes ordered by their department and then by their salary  ascending order
select * from Employee order by department_id, salary asc;

--33 select employees with ordered by their total salary of all employees
select department_id, sum(salary) 
from Employee 
group by department_id 
order by sum(salary);

--35 select departments ordered by the total salary of their employees
select department_id, SUM(salary) AS total_salary
from Employee
group by department_id
order by total_salary;

--36 select employee names along with their department names
select e.name, d.name as department
from Employee e
join Department d on e.department_id = d.department_id;

--37 select project names along with the department names they belong to 
select p.name, d.name as department
from Project p
join Department d on p.department_id = d.department_id;

--38 select employee names and their corresponding projects names
select e.name as employee, p.name as project
from Employee e
join Project p on e.department_id = p.department_id;

--39 select all employees and their departments,including those without a department
select e.name, d.name
from Employee e
left join Department d on e.department_id = d.department_id;

--40 select all departments and their employees,including departments without employees 
select d.name, e.name
from Department d
left join Employee e on d.department_id = e.department_id;

--41 select employees who are not assigned to any project
select e.name
from Employee e
left join Project p on e.department_id = p.department_id
where p.project_id is null;

--42 select employees and the number of projects their departments is working on
select e.name, COUNT(p.project_id) as project_count
from Employee e
left join Project p on e.department_id = p.department_id
group by e.name;

--43 select the departments that have no employees
select d.name
from Department d
left join Employee e on d.department_id = e.department_id
where e.emp_id is null;

--44 select employee names who share the same department with 'john doe'
select e.name
from Employee e
where e.department_id = (
    select department_id from Employee where name = 'John Doe'
);

--45 select the departmnet name with the highest average salary
select d.name
from Employee e
join Department d on e.department_id = d.department_id
group by d.name
order by AVG(e.salary) desc
limit 1;

--46 select the employee with the highest salary
select *
from Employee
where salary = (select MAX(salary) from Employee);

--47 select employees whose salary is above the average salary
select *
from Employee
where salary > (select AVG(salary) from Employee);

--48 select the second highest salary form the employee table
select MAX(salary)
from Employee
where salary < (select MAX(salary) from Employee);

--49 select the department with the most employees
select department_id
from Employee
group by department_id
order by COUNT(*) desc
limit 1;

--50 select employees who earn more than the average salary of their department
select *
from Employee e
where salary > (
    select AVG(salary)
    from Employee
    where department_id = e.department_id
);

--51 select the nth highest salary (for example,3rd highest)
select distinct salary
from Employee
order by salary desc
limit 1 OFFSET 2;

--52 select employees who are older than all employees in the HR department
select *
from Employee
where age > ALL (
    select age from Employee
    where department_id = (
        select department_id from Department where name = 'HR'
    )
);

--53 select departments where the average salary is greater than 55000
select department_id
from Employee
group by department_id
having AVG(salary) > 55000;

--54 select employees who work in a department with at least 2 projects
select e.name
from Employee e
where e.department_id in (
    select department_id
    from Project
    group by department_id
    having COUNT(*) >= 2
);

--55 select employees who were hired on the same data as 'jane smith'
select *
from Employee
where hire_date = (
    select hire_date from Employee where name = 'Jane Smith'
);

-- 56 select the total salary of employees hired in the year 2020
select SUM(salary)
from Employee
where YEAR(hire_date) = 2020;

--57 select the average salary of employees in each department,ordered by the average salary in descending order
select department_id, AVG(salary) as avg_salary
from Employee
group by department_id
order by avg_salary desc;

--58 select departments with more than 1 employee and an average salary greater thann 55000
select department_id
from Employee
group by department_id
having COUNT(*) > 1 and AVG(salary) > 55000;

--59 select employees hired in the last 2 years, oredered by their hire date
select *
from Employee
where hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 year)
order by hire_date;

--60 select the total number of employees and the average salary for departments with more than 2
select department_id, COUNT(*) AS emp_count, AVG(salary) AS avg_salary
from Employee
group by department_id
having COUNT(*) > 2;

--61 select the name and salary of employees whos esalary is above the average salary of their department
select name, salary
from Employee e
where salary > (
    select AVG(salary)
    from Employee
    where department_id = e.department_id
);

--62 select the names of employees who are hired on the same data as the oldest employee in the company
select name
from Employee
where hire_date = (
    select MIN(hire_date) from Employee
);

--63 select the departments names along with the total number of projects they are working on,ordered by the number of projects
select d.name, COUNT(p.project_id) AS project_count
from Department d
left join Project p ON d.department_id = p.department_id
group by d.name
order by project_count desc;

--64 select the employee name with the highest salary in each department
select e.name, e.department_id
from Employee e
where salary = (
    select MAX(salary)
    from Employee
    where department_id = e.department_id
);

--65 select the names and salaries of employees wh ae older than the average age of employee in their department
select name, salary
from Employee e
where age > (
    select AVG(age)
    from Employee
    where department_id = e.department_id
);