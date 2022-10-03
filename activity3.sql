-- MICHAEL SIEMENS UY
-- OCTOBER 1 2022

-- create table for notes

CREATE TABLE notes (
  id SERIAL PRIMARY KEY,
  body CHARACTER VARYING(255),
  student_id INT,
  FOREIGN KEY (student_id)
  REFERENCES  students (id)
)

-- INSERT 10 RECORDS IN NOTES TABLE

INSERT INTO notes (body, student_id)
    VALUES 
    ('Hello World!', 1),
    ('Lorem Ipsum', null),
    ('Sit Dolor', 1),
    ('I hate cheese!', 2),
    ('The quick brown fox', 3),
    ('The little prince', 3),
    ('The big boi', 4),
    ('This is a note', 5),
    ('This is also a note', 5),
    ('What about this?', null);

-- Inner join
SELECT * FROM students
    INNER JOIN notes n on students.id = n.student_id;

-- Outer Join
SELECT * FROM students
    LEFT JOIN notes n on students.id = n.student_id;

-- Right join
SELECT * FROM students
    RIGHT JOIN notes n on students.id = n.student_id;

-- Full outer join
SELECT * FROM students
    FULL OUTER JOIN notes n on students.id = n.student_id;