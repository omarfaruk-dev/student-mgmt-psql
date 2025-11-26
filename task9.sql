--! 9. Use LEFT JOIN to Show All Students and Their Enrolled Courses (If Any)
-- Write a query to retrieve the first name and last name of all students, along with the names of the courses they are enrolled in (if any). Use a LEFT JOIN to include students who are not enrolled in any course.

SELECT students.first_name, students.last_name, courses.course_name
FROM students
LEFT JOIN enrollments ON students.student_id = enrollments.student_id
LEFT JOIN courses ON enrollments.course_id = courses.course_id;