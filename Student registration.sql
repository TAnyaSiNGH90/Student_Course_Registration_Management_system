CREATE DATABASE STUDENT;
USE STUDENT;
CREATE TABLE Students (
Student_id varchar(10) primary key,
Student_name varchar(100),
Department varchar(50)
);
CREATE TABLE Courses (
Course_id varchar(10) PRIMARY KEY,
Course_name varchar(100),
Department varchar(50),
Semester int
);

CREATE TABLE Registration (
Reg_id INT auto_increment PRIMARY key,
Student_id varchar(10),
Course_id varchar(10),
Semester int,
FOREIGN key (Student_id) references Students(Student_id),
FOREIGN key (Course_id) references Courses(Course_id)
);
 -- now inserting data into the database
 INSERT INTO Students (Student_iD, Student_name, Department) VALUES
('S001', 'Amit Sharma', 'CSE'),
('S002', 'Riya Mehta', 'ECE'),
('S003', 'Karan Verma', 'CSE'),
('S004', 'Neha Singh', 'ME'),
('S005', 'Rajiv Gupta', 'EEE'),
('S006', 'Priya Nair', 'CSE'),
('S007', 'Arjun Reddy', 'ECE'),
('S008', 'Simran Kaur', 'CSE'),
('S009', 'Vikram Joshi', 'ME'),
('S010', 'Anjali Mishra', 'CSE'),
('S011', 'Rohit Yadav', 'EEE'),
('S012', 'Sneha Patel', 'CSE'),
('S013', 'Manish Kumar', 'ECE'),
('S014', 'Divya Jain', 'ME'),
('S015', 'Aditya Singh', 'CSE'),
('S016', 'Swati Agarwal', 'EEE'),
('S017', 'Harsh Raj', 'CSE'),
('S018', 'Meera Thomas', 'ECE'),
('S019', 'Aakash Bansal', 'CSE'),
('S020', 'Nidhi Saxena', 'ME'),
('S021', 'Sahil Kapoor', 'EEE'),
('S022', 'Tanya Chawla', 'CSE'),
('S023', 'Deepak Rana', 'ECE'),
('S024', 'Komal Sharma', 'CSE'),
('S025', 'Ankit Sinha', 'ME'),
('S026', 'Pooja Rani', 'EEE'),
('S027', 'Ramesh Das', 'CSE'),
('S028', 'Shreya Kulkarni', 'ECE'),
('S029', 'Gaurav Malhotra', 'CSE'),
('S030', 'Alok Pandey', 'ME'),
('S031', 'Surbhi Yadav', 'EEE'),
('S032', 'Vivek Chauhan', 'CSE'),
('S033', 'Ritika Ahuja', 'ECE'),
('S034', 'Mohit Tyagi', 'CSE'),
('S035', 'Jyoti Reddy', 'ME'),
('S036', 'Arvind Sharma', 'EEE'),
('S037', 'Kavita Joshi', 'CSE'),
('S038', 'Rohini Das', 'ECE'),
('S039', 'Sandeep Rao', 'CSE'),
('S040', 'Rupal Kapoor', 'ME'),
('S041', 'Anurag Mishra', 'EEE'),
('S042', 'Pallavi Sinha', 'CSE'),
('S043', 'Ravi Prasad', 'ECE'),
('S044', 'Geeta Nair', 'CSE'),
('S045', 'Yash Malhotra', 'ME'),
('S046', 'Monika Yadav', 'EEE'),
('S047', 'Kunal Chauhan', 'CSE'),
('S048', 'Sonali Ghosh', 'ECE'),
('S049', 'Pradeep Kumar', 'CSE'),
('S050', 'Varun Sharma', 'ME');

 Select * From Students;
  -- All students inserted into the student table
  -- Now inserting courses
INSERT INTO Courses (Course_iD, Course_name, Department, Semester) VALUES
('CSE101', 'Database Systems', 'CSE', 3),
('CSE102', 'Data Structures', 'CSE', 3),
('CSE103', 'Operating Systems', 'CSE', 4),
('ECE101', 'Digital Circuits', 'ECE', 3),
('ECE102', 'Communication Systems', 'ECE', 4),
('ME101', 'Thermodynamics', 'ME', 3),
('ME102', 'Fluid Mechanics', 'ME', 4),
('EEE101', 'Electrical Machines', 'EEE', 3),
('EEE102', 'Power Systems', 'EEE', 4),
('GEN101', 'Mathematics III', 'Common', 3);

SELECT * FROM Courses;
 -- Courses are inserted successfully
 -- now inserting registration of students
INSERT INTO Registration (Student_iD, Course_iD, Semester) VALUES
('S001', 'CSE101', 3), ('S001', 'CSE102', 3),
('S002', 'ECE101', 3), ('S002', 'ECE102', 4),
('S003', 'CSE101', 3), ('S003', 'GEN101', 3),
('S004', 'ME101', 3), ('S004', 'ME102', 4),
('S005', 'EEE101', 3), ('S005', 'EEE102', 4),
('S006', 'CSE101', 3), ('S006', 'CSE103', 4),
('S007', 'ECE101', 3), ('S007', 'GEN101', 3),
('S008', 'CSE102', 3), ('S008', 'CSE103', 4),
('S009', 'ME101', 3), ('S009', 'GEN101', 3),
('S010', 'CSE101', 3), ('S010', 'CSE102', 3),
('S011', 'EEE101', 3), ('S011', 'GEN101', 3),
('S012', 'CSE103', 4), ('S012', 'GEN101', 3),
('S013', 'ECE101', 3), ('S013', 'ECE102', 4),
('S014', 'ME102', 4), ('S014', 'GEN101', 3),
('S015', 'CSE101', 3), ('S015', 'CSE103', 4),
('S016', 'EEE102', 4), ('S016', 'GEN101', 3),
('S017', 'CSE102', 3), ('S017', 'CSE103', 4),
('S018', 'ECE101', 3), ('S018', 'GEN101', 3),
('S019', 'CSE101', 3), ('S019', 'GEN101', 3),
('S020', 'ME101', 3), ('S020', 'ME102', 4),
('S021', 'EEE101', 3), ('S021', 'EEE102', 4),
('S022', 'CSE102', 3), ('S022', 'CSE103', 4),
('S023', 'ECE101', 3), ('S023', 'ECE102', 4),
('S024', 'CSE101', 3), ('S024', 'GEN101', 3),
('S025', 'ME101', 3), ('S025', 'GEN101', 3),
('S026', 'EEE101', 3), ('S026', 'GEN101', 3),
('S027', 'CSE102', 3), ('S027', 'CSE103', 4),
('S028', 'ECE101', 3), ('S028', 'ECE102', 4),
('S029', 'CSE101', 3), ('S029', 'GEN101', 3),
('S030', 'ME102', 4), ('S030', 'GEN101', 3),
('S031', 'EEE101', 3), ('S031', 'EEE102', 4),
('S032', 'CSE103', 4), ('S032', 'GEN101', 3),
('S033', 'ECE101', 3), ('S033', 'ECE102', 4),
('S034', 'CSE101', 3), ('S034', 'CSE102', 3),
('S035', 'ME101', 3), ('S035', 'ME102', 4),
('S036', 'EEE101', 3), ('S036', 'GEN101', 3),
('S037', 'CSE103', 4), ('S037', 'GEN101', 3),
('S038', 'ECE101', 3), ('S038', 'ECE102', 4),
('S039', 'CSE101', 3), ('S039', 'CSE103', 4),
('S040', 'ME101', 3), ('S040', 'GEN101', 3),
('S041', 'EEE101', 3), ('S041', 'EEE102', 4),
('S042', 'CSE102', 3), ('S042', 'CSE103', 4),
('S043', 'ECE101', 3), ('S043', 'GEN101', 3),
('S044', 'CSE101', 3), ('S044', 'GEN101', 3),
('S045', 'ME101', 3), ('S045', 'ME102', 4),
('S046', 'EEE102', 4), ('S046', 'GEN101', 3),
('S047', 'CSE102', 3), ('S047', 'CSE103', 4),
('S048', 'ECE101', 3), ('S048', 'ECE102', 4),
('S049', 'CSE101', 3), ('S049', 'CSE103', 4),
('S050', 'ME101', 3), ('S050', 'GEN101', 3);
 
SELECT * FROM REGISTRATION; 
 -- Registration is also complete 
 -- Now applying some query
 -- Count number of students in each course
SELECT c.Course_name, COUNT(r.Student_iD) AS Total_Students
FROM Registration r
JOIN Courses c ON r.Course_iD = c.Course_ID
GROUP BY c.Course_name;

 -- Find students enrolled in a particular course (e.g., CSE101)
SELECT c.Course_name, s.Student_name
FROM Registration r
JOIN Students s ON r.Student_iD = s.Student_iD
JOIN Courses c ON r.Course_iD = c.Course_iD
WHERE c.Course_iD = 'CSE101';

 -- Get all CSE students and their registered courses
SELECT s.Student_Name, s.Department, c.Course_Name
FROM Registration r
JOIN Students s ON r.Student_iD = s.Student_iD
JOIN Courses c ON r.Course_iD = c.Course_iD
WHERE s.Department = 'CSE';

 -- List students who registered for more than 2 courses
SELECT s.Student_name, COUNT(r.Course_iD) AS Courses_Registered
FROM Registration r
JOIN Students s ON r.Student_iD = s.Student_iD
GROUP BY s.Student_iD, s.Student_name
HAVING COUNT(r.Course_iD) > 2;