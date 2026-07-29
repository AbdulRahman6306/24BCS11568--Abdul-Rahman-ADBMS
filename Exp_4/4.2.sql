-- Write a query to do the following:

-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.

select *from student
full OUTER JOIN course
on student.Course_id = course.Course_id;