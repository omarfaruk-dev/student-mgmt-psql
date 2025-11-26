--! Retrieve Course Names and the Number of Students Enrolled in Each Course
-- Write a query to retrieve the course name and the count of students enrolled in each course. Use the Courses and Enrollments tables, and ensure the result includes courses with zero enrollments.
SELECT course_name,
COUNT (enrollment_id) AS student_count
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY course_name;