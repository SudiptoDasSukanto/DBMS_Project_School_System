Teacher:
-- Inserting the first record
INSERT INTO Teachers (teacher_id, first_name, last_name, dob, gender, address, contact_number, salary)
VALUES (101, 'Alice', 'Johnson', TO_DATE('1980-05-20', 'YYYY-MM-DD'), 'Female', '111 Maple Ave', '555-1234', 6000);

-- Inserting the second record
INSERT INTO Teachers (teacher_id, first_name, last_name, dob, gender, address, contact_number, salary)
VALUES (102, 'Robert', 'Smith', TO_DATE('1975-10-15', 'YYYY-MM-DD'), 'Male', '222 Oak Ave', '555-5678', 5500);

-- Inserting the third record
INSERT INTO Teachers (teacher_id, first_name, last_name, dob, gender, address, contact_number, salary)
VALUES (103, 'Olivia', 'Davis', TO_DATE('1982-03-08', 'YYYY-MM-DD'), 'Female', '333 Pine Ave', '555-9876', 5200);

-- Inserting the fourth record
INSERT INTO Teachers (teacher_id, first_name, last_name, dob, gender, address, contact_number, salary)
VALUES (104, 'William', 'Brown', TO_DATE('1978-08-25', 'YYYY-MM-DD'), 'Male', '444 Elm Ave', '555-4321', 5800);

-- Inserting the fifth record
INSERT INTO Teachers (teacher_id, first_name, last_name, dob, gender, address, contact_number, salary)
VALUES (105, 'Emma', 'Miller', TO_DATE('1985-01-30', 'YYYY-MM-DD'), 'Female', '555 Birch Ave', '555-8765', 5600);


Classes:
-- Inserting the first record
INSERT INTO Classes (class_id, class_name, fee_amount)
VALUES (101, 'Math 101', 200);

-- Inserting the second record
INSERT INTO Classes (class_id, class_name, fee_amount)
VALUES (102, 'History 202', 250);

-- Inserting the third record
INSERT INTO Classes (class_id, class_name, fee_amount)
VALUES (103, 'Science Lab', 300);

-- Inserting the fourth record
INSERT INTO Classes (class_id, class_name, fee_amount)
VALUES (104, 'English 301', 220);

-- Inserting the fifth record
INSERT INTO Classes (class_id, class_name, fee_amount)
VALUES (105, 'Art 102', 180);


Courses:
-- Inserting the first record
INSERT INTO Courses (course_id, course_name, class_id, teacher_id)
VALUES (1, 'Mathematics', 101, 101);

-- Inserting the second record
INSERT INTO Courses (course_id, course_name, class_id, teacher_id)
VALUES (2, 'History of Civilization', 102, 102);

-- Inserting the third record
INSERT INTO Courses (course_id, course_name, class_id, teacher_id)
VALUES (3, 'Biology Lab', 103, 103);

-- Inserting the fourth record
INSERT INTO Courses (course_id, course_name, class_id, teacher_id)
VALUES (4, 'English Literature', 104, 104);

-- Inserting the fifth record
INSERT INTO Courses (course_id, course_name, class_id, teacher_id)
VALUES (5, 'Art Appreciation', 105, 105);


Monthly_Salary_Teachers Table:
-- Inserting the first record
INSERT INTO Monthly_Salary_Teachers (salary_id, teacher_id, salary_month, salary_amount)
VALUES (1, 101, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 6000);

-- Inserting the second record
INSERT INTO Monthly_Salary_Teachers (salary_id, teacher_id, salary_month, salary_amount)
VALUES (2, 102, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 5500);

-- Inserting the third record
INSERT INTO Monthly_Salary_Teachers (salary_id, teacher_id, salary_month, salary_amount)
VALUES (3, 103, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 5200);

-- Inserting the fourth record
INSERT INTO Monthly_Salary_Teachers (salary_id, teacher_id, salary_month, salary_amount)
VALUES (4, 104, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 5800);

-- Inserting the fifth record
INSERT INTO Monthly_Salary_Teachers (salary_id, teacher_id, salary_month, salary_amount)
VALUES (5, 105, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 5600);


Enrollments:
-- Inserting the first record
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES (1, 1, 1);

-- Inserting the second record
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES (2, 2, 2);

-- Inserting the third record
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES (3, 3, 3);

-- Inserting the fourth record
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES (4, 4, 4);

-- Inserting the fifth record
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES (5, 5, 5);


Fees:
-- Inserting the first record
INSERT INTO Fees (fee_id, student_id, class_id, fee_month, fee_amount)
VALUES (1, 1, 101, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 200);

-- Inserting the second record
INSERT INTO Fees (fee_id, student_id, class_id, fee_month, fee_amount)
VALUES (2, 2, 102, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 250);

-- Inserting the third record
INSERT INTO Fees (fee_id, student_id, class_id, fee_month, fee_amount)
VALUES (3, 3, 103, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 300);

-- Inserting the fourth record
INSERT INTO Fees (fee_id, student_id, class_id, fee_month, fee_amount)
VALUES (4, 4, 104, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 220);

-- Inserting the fifth record
INSERT INTO Fees (fee_id, student_id, class_id, fee_month, fee_amount)
VALUES (5, 5, 105, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 180);


Attendance:
-- Inserting the first record
INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (1, 1, 1, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Present');

-- Inserting the second record
INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (2, 2, 2, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Present');

-- Inserting the third record
INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (3, 3, 3, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Absent');

-- Inserting the fourth record
INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (4, 4, 4, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Present');

-- Inserting the fifth record
INSERT INTO Attendance (attendance_id, student_id, course_id, attendance_date, status)
VALUES (5, 5, 5, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'Absent');


Students:
-- Inserting the first record
INSERT INTO Students (student_id, first_name, last_name, dob, gender, address, parent_contact, class_id)
VALUES (1, 'John', 'Doe', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'Male', '123 Main St', '123-456-7890', 101);

-- Inserting the second record
INSERT INTO Students (student_id, first_name, last_name, dob, gender, address, parent_contact, class_id)
VALUES (2, 'Jane', 'Smith', TO_DATE('1999-05-15', 'YYYY-MM-DD'), 'Female', '456 Oak St', '987-654-3210', 102);

-- Inserting the third record
INSERT INTO Students (student_id, first_name, last_name, dob, gender, address, parent_contact, class_id)
VALUES (3, 'Alex', 'Johnson', TO_DATE('2001-03-20', 'YYYY-MM-DD'), 'Male', '789 Pine St', '555-123-4567', 103);

-- Inserting the fourth record
INSERT INTO Students (student_id, first_name, last_name, dob, gender, address, parent_contact, class_id)
VALUES (4, 'Emily', 'Wilson', TO_DATE('2002-07-10', 'YYYY-MM-DD'), 'Female', '987 Elm St', '333-999-8888', 101);

-- Inserting the fifth record
INSERT INTO Students (student_id, first_name, last_name, dob, gender, address, parent_contact, class_id)
VALUES (5, 'Daniel', 'Miller', TO_DATE('2000-12-05', 'YYYY-MM-DD'), 'Male', '543 Birch St', '777-222-1111', 102);
