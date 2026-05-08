# Week 1 - Day 3

## 📌 Day 3 Learning Track (Window Functions + CTEs)

### Dataset / Schema Setup

- Practice schema (PostgreSQL compatible) created in `Schema.sql`
- Tables:
  - `employees` (department, salary, manager hierarchy)
  - `customers` (customer master)
  - `orders` (customer orders handled by employees)
- Designed for analytics scenarios:
  - salary-based ranking and department comparisons
  - customer order timelines for `LAG` / `LEAD`
  - employee-wise and department-wise sales analysis
  - manager hierarchy for recursive CTE practice

### Window Functions Covered

- Ranking functions:
  - `ROW_NUMBER`
  - `RANK`
  - `DENSE_RANK`
  - `NTILE`
- Aggregate windows:
  - `SUM() OVER(...)`
  - `AVG() OVER(...)`
  - `MAX() OVER(...)`
  - `COUNT() OVER(...)`
- Navigation functions:
  - `LAG`
  - `LEAD`
- Running and moving calculations:
  - running totals
  - cumulative sums
  - moving average (`ROWS BETWEEN 2 PRECEDING AND CURRENT ROW`)

### CTE and Recursive CTE Practice

- Single CTE for reusable aggregates (employee sales, order average filtering)
- Multiple CTE chaining for staged calculations (totals + rankings + company average comparison)
- Recursive CTE examples:
  - number generation (1 to 10)
  - employee-manager hierarchy expansion

### Assignment Work (Questions 1-30)

Implemented in `Window_Functions.sql`:

- Salary ranking and top-N employee extraction
- Department-wise ranking, max salary, payroll, and average comparison
- Running total / cumulative sales / moving average over orders
- Previous and next order analysis with `LAG` and `LEAD`
- Customer spending totals and ranking reports
- Employees above department average salary
- Percentage salary contribution within each department
- Total employees count displayed with each row
- CTE-based sales filters and company-average comparisons
- Recursive hierarchy and advanced top-performer selection per department
