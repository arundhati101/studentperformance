-- Name: Arundhati Chaudhuri
-- Roll No: 23052873
-- Project: Student Performance Analysis
-- SQL Analysis

-- Create and use database
CREATE DATABASE student_db;
USE student_db;

-- Create table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(10),
    math INT,
    science INT,
    programming INT,
    attendance INT
);

SHOW TABLES;

-- Insert 10 records
INSERT INTO students VALUES
(1, 'Amit', 'CS', 78, 85, 90, 92),
(2, 'Riya', 'CS', 88, 79, 85, 90),
(3, 'Karan', 'IT', 65, 70, 72, 80),
(4, 'Pooja', 'IT', 92, 91, 95, 96),
(5, 'Rahul', 'CS', 55, 60, 58, 70),
(6, 'Neha', 'CS', 82, 88, 84, 93),
(7, 'Arjun', 'IT', 74, 69, 78, 85),
(8, 'Sneha', 'CS', 91, 90, 92, 95),
(9, 'Varun', 'IT', 60, 62, 65, 75),
(10, 'Ananya', 'CS', 85, 87, 89, 94);

-- Analysis

-- 1. Display student records
SELECT * FROM students;

-- 2. Calculate average marks of each student
SELECT name,
       (math + science + programming)/3 AS avg_marks
FROM students;

-- 3. Identify top-performing student
SELECT name,
       (math + science + programming) AS total_marks
FROM students
ORDER BY total_marks DESC
LIMIT 1;

-- 4. Calculate department-wise average marks
SELECT department,
       AVG((math + science + programming)/3) AS dept_avg
FROM students
GROUP BY department;

-- 5. Identify students scoring below 60 marks
SELECT name,
       (math + science + programming)/3 AS avg_marks
FROM students
WHERE (math + science + programming)/3 < 60;

-- 6. Calculate overall class average
SELECT AVG((math + science + programming)/3) AS class_avg
FROM students;
