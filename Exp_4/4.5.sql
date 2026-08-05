/* Write a query to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
 

select  *from student as s
JOIN course c
on s.Course_id = c.Course_id;

select  *from student as s
left JOIN course c
on s.Course_id = c.Course_id;