-- Active: 1763995340694@@localhost@5432@student_management
--! DATABASE CREATED - student_management
CREATE DATABASE student_management;

--? STUDENT TABLE:
--*students table created
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    date_of_birth DATE,
    email VARCHAR(50) UNIQUE NOT NULL,
    phone_number VARCHAR(11)
);

SELECT * FROM students;

--* data inserted to students table
INSERT INTO
    students (
        first_name,
        last_name,
        date_of_birth,
        email,
        phone_number
    )
VALUES (
        'John',
        'Doe',
        '1999-05-15',
        'john.doe@example.com',
        '+1234567890'
    ),
    (
        'Jane',
        'Smith',
        '2001-08-22',
        'jane.smith@example.com',
        '+9876543210'
    ),
    (
        'Alice',
        'Johnson',
        '2002-03-10',
        'alice.j@example.com',
        '+1122334455'
    ),
    (
        'Bob',
        'Brown',
        '1998-11-30',
        'bob.brown@example.com',
        '+9988776655'
    ),
    (
        'Charlie',
        'Davis',
        '2003-07-05',
        'charlie.d@example.com',
        '+5544332211'
    );

--? COURSE TABLE:
--* courses table created
CREATE TABLE courses (
    course_name VARCHAR(30) UNIQUE,
    course_id SERIAL PRIMARY KEY,
    price INT
);

SELECT * FROM courses;
--* data inserted to courses table
INSERT INTO
    courses (course_name, price)
VALUES ('Introduction to SQL', 2000),
    ('Web Development', 2500),
    ('Data Science Basics', 5000),
    ('Advanced Python', 9000),
    ('Database Design', 1500);

--? ENROLLMENT TABLE:
--* enrollment table created
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    enrollment_date DATE NOT NULL,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses (course_id) ON DELETE CASCADE
);

SELECT * FROM enrollments;

--* data inserted to enrollments table
INSERT INTO
    enrollments (
        student_id,
        course_id,
        enrollment_date
    )
VALUES 
    (1, 1, '2025-01-10'),
    (2, 2, '2025-02-15'),
    (3, 3, '2025-03-20'),
    (4, 4, '2025-03-22');