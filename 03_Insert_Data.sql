USE StudentManagementDB;
GO

INSERT INTO Students (FirstName, LastName, Age, Email)
VALUES
('Ahmet','Yılmaz',20,'ahmet@gmail.com'),
('Ayşe','Demir',21,'ayse@gmail.com'),
('Mehmet','Kaya',22,'mehmet@gmail.com'),
('Zeynep','Çelik',20,'zeynep@gmail.com'),
('Ali','Aydın',23,'ali@gmail.com');

INSERT INTO Teachers (FirstName, LastName, Department)
VALUES
('Hasan','Korkmaz','Computer Engineering'),
('Fatma','Şahin','Mathematics'),
('Mustafa','Arslan','Physics');

INSERT INTO Courses (CourseName, TeacherID)
VALUES
('Database Systems',1),
('Calculus',2),
('Physics I',3);

INSERT INTO Enrollments (StudentID, CourseID, Grade)
VALUES
(1,1,90),
(1,2,75),
(2,1,88),
(3,3,95),
(4,2,82),
(5,1,67);