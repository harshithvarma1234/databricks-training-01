# Week 1 - Day 2

## 📌 Day 2 Learning Track (SQL Joins)

### Dataset / Schema Setup

- Practice schema (PostgreSQL compatible) created in `Schema1.sql`
- Tables:
  - `students` (student master)
  - `instructors` (instructor master)
  - `courses` (course master, optional instructor mapping)
  - `enrollments` (student-course mapping)
- Built-in missing-data scenarios for join practice:
  - students with **no enrollments**
  - courses with **no enrollments**
  - courses with **no instructor**

### Joins Covered

- `INNER JOIN` vs `LEFT JOIN` (keeping unmatched rows)
- `RIGHT JOIN` (same concept, opposite direction)
- `FULL OUTER JOIN` pattern (simulated using `LEFT JOIN` + `RIGHT JOIN` + `UNION` in PostgreSQL)
- `CROSS JOIN` (cartesian product)

### Assignment Work (Join Queries)

Implemented in `joints_assignment.sql`:

- Display all students and their enrolled courses (include non-enrolled students)
- Find courses with no enrollments
- Display instructors and courses they teach (include unassigned instructors)
- Find courses with no instructor assigned
- Show students and enrollments using a `RIGHT JOIN`
- Find students not enrolled in any course
- Simulate `FULL OUTER JOIN` for students ↔ enrollments
- Find courses that never appeared in enrollments
- Simulate `FULL OUTER JOIN` for instructors ↔ courses
- Report: student name + course name + instructor name (keep missing course/instructor info)
- Bonus: list every student with every course (`CROSS JOIN`)
