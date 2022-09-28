-- MICHAEL SIEMENS UY
-- SEPTEMBER 28 2022

-- STEP 1
CREATE TABLE IF NOT EXISTS students (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    middle_name character varying(255) DEFAULT 'Blank' :: character varying,
    last_name character varying(255) NOT NULL,
    age integer NOT NULL,
    location character varying NOT NULL,
    CONSTRAINT students_pkey PRIMARY KEY (id)
)

-- STEP 2
INSERT INTO students(
	id, first_name, middle_name, last_name, age, location)
	VALUES (1, 'Juan', DEFAULT, 'Cruz', 18, 'Manila');

INSERT INTO students(
	id, first_name, middle_name, last_name, age, location)
	VALUES (2, 'Anne', DEFAULT, 'Wall', 20, 'Manila');

INSERT INTO students(
	id, first_name, middle_name, last_name, age, location)
	VALUES (3, 'Theresa', DEFAULT, 'Joseph', 21, 'Manila');

INSERT INTO students(
	id, first_name, middle_name, last_name, age, location)
	VALUES (4, 'Issac', DEFAULT, 'Gray', 19, 'Laguna');

INSERT INTO students(
	id, first_name, middle_name, last_name, age, location)
	VALUES (5, 'Zack', DEFAULT, 'Matthews', 22, 'Marikina');

INSERT INTO public.students(
	id, first_name, middle_name, last_name, age, location)
	VALUES (6, 'Finn', DEFAULT, 'Lam', 25, 'Manila');

-- STEP 3
UPDATE students
	SET id=1, first_name='Ivan', middle_name='Ingram', last_name='Howard', age=25, location='Bulacan'
	WHERE id=1;

-- STEP 4
DELETE FROM public.students
	WHERE id=(SELECT MAX(id) FROM public.students);