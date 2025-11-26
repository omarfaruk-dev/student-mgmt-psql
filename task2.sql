--! 2. Retrieve Names and Birthdates of Students Born After 2000
-- Write a query to retrieve the first name, last name, and date of birth of students who were born after January 1, 2000.

SELECT first_name, last_name, date_of_birth FROM students
WHERE date_of_birth>'2000-01-01';