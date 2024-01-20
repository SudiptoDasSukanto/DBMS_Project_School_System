-- Create the Students table
CREATE TABLE Students (
    student_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    dob DATE,
    gender VARCHAR2(10),
    address VARCHAR2(100),
    parent_contact VARCHAR2(20),
    class_id NUMBER,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Create the Teachers table
CREATE TABLE Teachers (
    teacher_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    dob DATE,
    gender VARCHAR2(10),
    address VARCHAR2(100),
    contact_number VARCHAR2(20),
    salary NUMBER
);

-- Create the Classes table
CREATE TABLE Classes (
    class_id NUMBER PRIMARY KEY,
    class_name VARCHAR2(50),
    fee_amount NUMBER
);

-- Create the Courses table
CREATE TABLE Courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100),
    class_id NUMBER,
    teacher_id NUMBER,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Create the Fees table
CREATE TABLE Fees (
    fee_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    class_id NUMBER,
    fee_month DATE,
    fee_amount NUMBER,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Create the Monthly Salary table for Teachers
CREATE TABLE Monthly_Salary_Teachers (
    salary_id NUMBER PRIMARY KEY,
    teacher_id NUMBER,
    salary_month DATE,
    salary_amount NUMBER,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- Create the Student Rolls table
CREATE TABLE Attendance (
    attendance_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    attendance_date DATE,
    status VARCHAR2(20),
    CONSTRAINT fk_attendance_students
        FOREIGN KEY (student_id) REFERENCES Students(student_id),
    CONSTRAINT fk_attendance_courses
        FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
