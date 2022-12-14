-- MICHAEL SIEMENS UY
-- SEPTEMBER 28 2022

-- Display the count of all `students`

SELECT 
   COUNT(id) 
FROM 
   students;
   
-- Select all students with `location` is `Manila`

SELECT
	*
FROM 
	students
WHERE
	location= 'Manila';

-- Display the average `age` of all `students`

SELECT 
   AVG(age) 
FROM 
   students;
   
-- Display all `students` by `age` descending order

SELECT
	*
FROM 
  students
ORDER BY
	age DESC;  