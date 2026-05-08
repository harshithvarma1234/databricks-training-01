# Week 1 - Day 1

## 📌 Day 1 Learning Track (SQL Fundamentals + Analytics)

### Database Concepts and SQL Categories

- ETL basics: **Extract → Transform → Load**
- SQL language categories:
  - **DQL**: `SELECT`
  - **DML**: `INSERT`, `UPDATE`, `DELETE`
  - **DDL**: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`

### Basic Queries and Data Manipulation

- Creating tables and understanding common data types
- Using `INSERT` and `UPDATE` safely
  - Importance of **Primary Key**
  - Using a correct `WHERE` clause (row-level targeting)

### SQL Functions

#### String Functions

- Text transformations: `UPPER`, `LOWER`, `SUBSTRING`
- Pattern matching: `LIKE`
- Finding character positions:
  - `POSITION` (or equivalent)
  - Snowflake-style regular expression equivalents (as discussed)

#### Mathematical Functions

- Rounding and numeric shaping: `CEIL`, `FLOOR`, `ROUND`

#### Standard Aggregate Functions

- Core aggregates: `MIN`, `MAX`, `SUM`, `COUNT`, `AVG`

### Grouping and Filtering

- Combining aggregate + non-aggregate columns using `GROUP BY`
- Filtering differences:
  - `WHERE`: filters **rows before aggregation**
  - `HAVING`: filters **after aggregation** (aggregated results)

### Window / Analytical Functions

- Window aggregates using `OVER` and `PARTITION BY`
  - Example use case: department-wise total salary alongside each employee row (no row collapse)

### Window Filtering (QUALIFY)

- Using `QUALIFY` to filter results **based on window function output**

### Ranking Data

- Ranking functions and differences:
  - `ROW_NUMBER`
  - `RANK`
  - `DENSE_RANK`
- Practical scenario: find **top highest-paid employees per department**

### Additional Advanced Topics (Introduced / Roadmap)

- Joins: `INNER JOIN`, `LEFT OUTER JOIN`
- Set operators: `UNION`, `INTERSECT`, `MINUS`
- Subqueries and correlated subqueries
- CTEs (Common Table Expressions)