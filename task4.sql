--! 4. Retrieve All Course Names for a Specific Student (e.g., student_id = 1)
-- Write a query to retrieve the names of all courses in which a specific student (e.g., student_id = 1) is enrolled. Use the Courses and Enrollments tables.

SELECT course_name
FROM courses
JOIN enrollments
ON courses.course_id = enrollments.course_id
WHERE enrollments.student_id = 1;