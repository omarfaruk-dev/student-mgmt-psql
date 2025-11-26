--! 6. Update a Student's Email (e.g., student_id = 2)
-- Write a query to update the email of a specific student (e.g., student_id = 2) to a new email address.

UPDATE students
SET email='smith@xyz.com'
WHERE student_id=2;