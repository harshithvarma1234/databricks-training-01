-- in this file we will write all the sql queries that we will use to interact with the database

--display all students and the courses they are enrolled in. include students who are not enrolled in any course
select s.student_name, c.course_name
from students s
left join enrollments e
on s.student_id = e.student_id
left join courses c
on e.course_id = c.course_id;

--find all courses that currently have no students enrolled
select c.course_name
from courses c
left join enrollments e
on c.course_id = e.course_id
where e.student_id is null;

--display all instructions and the courses they teach,including instructors who are not assigned to any course
select i.instructor_name, c.course_name
from instructors i
left join courses c
on i.instructor_id = c.instructor_id;

--find all courses that do not have an instructor assigned
select course_name
from courses
where instructor_id is null;

--display all students and enrollment information using a right join
select s.student_name, e.course_id
from enrollments e
right join students s
on e.student_id = s.student_id;

--find students who are not enrolled in any course
select s.student_name
from students s
left join enrollments e
on s.student_id = e.student_id
where e.course_id is null;

--use a full outer join to display all students and enrollments including unmatched rows from both tables
select s.student_name, e.course_id
from students s
full outer join enrollments e
on s.student_id = e.student_id;

--find all courses that have never appeared in the enrollments table
select c.course_name
from courses c
left join enrollments e
on c.course_id = e.course_id
where e.course_id is null;

--display all instructors and courses using a full outer join and identify unmatched rows
select i.instructor_name, c.course_name
from instructors i
full outer join courses c
on i.instructor_id = c.instructor_id;

--create a report showing: student name,course name, and instructor name include rows even if course or instructor information is missing
select 
    s.student_name,
    c.course_name,
    i.instructor_name
from students s
left join enrollments e
on s.student_id = e.student_id
left join courses c
on e.course_id = c.course_id
left join instructors i
on c.instructor_id = i.instructor_id;

--write a query that lists every student and every course even if there is no enrollment relationship between them
select s.student_name, c.course_name
from students s
cross join courses c;