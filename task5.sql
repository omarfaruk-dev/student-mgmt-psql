--! 5. Retrieve All Enrollment Details with Student Names, Course Names, and Enrollment Dates
-- Write a query to retrieve the first name and last name of students, the names of the courses they are enrolled in, and the enrollment dates. Use the Students, Courses, and Enrollments tables.

SELECT students.first_name, students.last_name, courses.course_name, enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.student_id
JOIN courses ON enrollments.course_id = courses.course_id;
