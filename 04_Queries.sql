USE StudentManagementDB;
GO

-- Tüm öğrenciler
SELECT * FROM Students;

-- 20 yaşından büyük öğrenciler
SELECT *
FROM Students
WHERE Age > 20;

-- Öğrencileri yaşa göre sırala
SELECT *
FROM Students
ORDER BY Age DESC;

-- Ortalama not
SELECT AVG(Grade) AS AverageGrade
FROM Enrollments;

-- En yüksek not
SELECT MAX(Grade) AS HighestGrade
FROM Enrollments;

-- En düşük not
SELECT MIN(Grade) AS LowestGrade
FROM Enrollments;

-- Öğrenci ve aldığı ders
SELECT
    s.FirstName,
    s.LastName,
    c.CourseName,
    e.Grade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

-- Ders ve öğretmen
SELECT
    c.CourseName,
    t.FirstName,
    t.LastName
FROM Courses c
JOIN Teachers t ON c.TeacherID = t.TeacherID;

-- Her dersteki öğrenci sayısı
SELECT
    c.CourseName,
    COUNT(*) AS StudentCount
FROM Enrollments e
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY c.CourseName;

-- Ortalama notu 80'in üzerinde olan dersler
SELECT
    c.CourseName,
    AVG(e.Grade) AS AverageGrade
FROM Enrollments e
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY c.CourseName
HAVING AVG(e.Grade) > 80;