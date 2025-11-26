--! 7. Delete a Course and Ensure Associated Enrollments Are Also Deleted (Using CASCADE)
-- Write a query to delete a specific course (e.g., course_id = 1) from the Courses table. Ensure that all associated enrollments in the Enrollments table are also deleted automatically using the ON DELETE CASCADE option.
DELETE FROM courses
WHERE course_id=1;