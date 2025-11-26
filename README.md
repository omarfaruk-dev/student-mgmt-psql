# Student Management System

## Project Overview

This is a SQL-based Student Management System that demonstrates database design, data manipulation, and querying capabilities using MySQL.

## Database Structure

**Database Name:** `student_management`

### Tables

#### Student Table
- student_id (Primary Key, Auto Increment)
- first_name
- last_name
- date_of_birth
- email
- phone_number

#### Course Table
- course_id (Primary Key, Auto Increment)
- course_name (Unique)
- price

#### Enrollment Table
- enrollment_id (Primary Key, Auto Increment)
- student_id (Foreign Key)
- course_id (Foreign Key)
- enrollment_date

## Sample Data

The database includes:
- 5+ student records
- 3+ course records
- Multiple enrollment records with varying enrollment dates

Sample data can be found in `insertData.sql`

## Completed Tasks

### Task 1: Student Names and Emails ✓
Retrieved all students' first names, last names, and email addresses.

### Task 2: Students Born After 2000 ✓
Filtered and retrieved students with birthdates after January 1, 2000.

### Task 3: Course Enrollment Statistics ✓
Generated a report showing each course name with the count of enrolled students, including courses with zero enrollments.

### Task 4: Student Course List ✓
Retrieved all courses for a specific student using their student ID.

### Task 5: Complete Enrollment Report ✓
Combined student information, course details, and enrollment dates in a comprehensive report.

### Task 6: Email Update ✓
Updated student email addresses using student ID as the identifier.

### Task 7: Course Deletion with CASCADE ✓
Implemented course deletion with automatic removal of associated enrollments using foreign key constraints.

### Task 8: Student-Course Enrollment Join ✓
Created a query joining students with their enrolled courses.

### Task 9: All Students with Optional Courses ✓
Generated a complete student list including those without any course enrollments using LEFT JOIN.

## Project Files

- Database schema and table creation scripts
- Sample data insertion file
- Task-specific SQL queries (Task 1-9)

## Status

All 9 tasks have been successfully completed.
