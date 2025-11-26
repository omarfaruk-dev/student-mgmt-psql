--! 8. Join Students and Enrollments Tables to Show Which Student Enrolled in Which Course
-- Write a query to retrieve the first name and last name of students along with the names of the courses they are enrolled in. Use the Students, Courses, and Enrollments tables.

SELECT students.first_name, students.last_name, courses.course_name
FROM enrollments
JOIN students ON enrollments.student_id = students.student_id
JOIN courses ON enrollments.course_id = courses.course_id;