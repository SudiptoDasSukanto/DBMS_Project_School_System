Query 1: Total Number of Students

 SELECT COUNT(*) AS total_students FROM Students;

Query 2: Average Salary of Teachers

SELECT AVG(salary_amount) AS average_salary FROM Monthly_Salary_Teachers;

Query 3:  List of Students with Their Corresponding Fees (Including Those Who Havent Paid)

SELECT Students.student_id, Students.first_name, Students.last_name, Fees.fee_month, Fees.fee_amount
FROM Students
LEFT JOIN Fees ON Students.student_id = Fees.student_id;





Query 4: Details of Courses and Enrolled Students (Including Courses Without Enrollees)

SELECT Courses.course_id, Courses.course_name, Students.student_id, Students.first_name, Students.last_name
FROM Courses
LEFT JOIN Enrollments ON Courses.course_id = Enrollments.course_id
LEFT JOIN Students ON Enrollments.student_id = Students.student_id;


Query 5: Top 5 Highest Paid Teachers

SELECT teacher_id, first_name, last_name, salary_amount
FROM Monthly_Salary_Teachers
ORDER BY salary_amount DESC
FETCH FIRST 5 ROWS ONLY;



-- Example Query 1: Retrieve the Names of All Students in a Specific Class
SELECT first_name, last_name
FROM Students
WHERE class_id = 101;

-- Example Query 2: Find the Total Number of Students in Each Class
SELECT class_id, COUNT(student_id) AS total_students
FROM Students
GROUP BY class_id;

-- Example Query 3: List Courses Taught by a Specific Teacher
SELECT c.course_name
FROM Courses c
WHERE c.teacher_id = 101;

-- Example Query 4: Get the Monthly Salary of a Specific Teacher
SELECT salary_month, salary_amount
FROM Monthly_Salary_Teachers
WHERE teacher_id = 101;

-- Example Query 5: Find Students with Outstanding Fees
SELECT s.first_name, s.last_name, f.fee_month, f.fee_amount
FROM Students s
LEFT JOIN Fees f ON s.student_id = f.student_id
WHERE f.fee_amount > 0 OR f.fee_amount IS NULL;

-- Example Query 6: List Teachers and the Courses They Teach
SELECT t.first_name, t.last_name, c.course_name
FROM Teachers t
JOIN Courses c ON t.teacher_id = c.teacher_id;

-- Example Query 7: Calculate Average Monthly Salary for All Teachers
SELECT AVG(salary_amount) AS avg_salary
FROM Monthly_Salary_Teachers;

-- Example Query 8: Find Students with Perfect Attendance
SELECT s.first_name, s.last_name
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Courses c
    WHERE NOT EXISTS (
        SELECT 1
        FROM Attendance a
        WHERE a.student_id = s.student_id AND a.course_id = c.course_id AND a.status = 'Present'
    )
);

-- Example Query 9: Get the Total Fees Collected for a Specific Class
SELECT class_id, SUM(fee_amount) AS total_fees_collected
FROM Fees
WHERE class_id = 101
GROUP BY class_id;

