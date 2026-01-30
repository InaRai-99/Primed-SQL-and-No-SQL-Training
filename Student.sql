CREATE TABLE Students (
  id INT,
    StudentID int Primary Key,
    FirstName varchar (100) NOT NULL,
    LastName varchar (100) NOT NULL,
    Email varchar (1000) Unique NOT NULL,
);

CREATE TABLE Courses (
    CourseID int Primary Key,
    CourseName varchar (100) NOT NULL
) 

ALTER TABLE students ADD email VARCHAR(100);

DROP TABLE students;

TRUNCATE TABLE students;

INSERT INTO students VALUES (1, 'Clark');

INSERT INTO students (id, name) VALUES (2, 'Diana');

SELECT * FROM students;

UPDATE students SET name = 'Lana' WHERE id = 1;

DELETE FROM students WHERE id = 2;

GRANT SELECT ON students TO user1;

REVOKE INSERT ON students FROM user1;

COMMIT;

ROLLBACK;
