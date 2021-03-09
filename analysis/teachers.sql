CREATE TABLE Teachers (
	id bigserial,
	firstname varchar(25),
	last_name varchar(50),
	school varchar(50),
	hire_date date,
	salary numeric
);

INSERT INTO teachers (firstname, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D Roosevelt HS', '2011-10-30', 36200),
	   ('Lee', 'Reynolds', 'F.D. Roosevelt', '1993-05-22', 65000),
	   ('Samuel', 'Cole', 'Meyers Middle School', '2005-08-01', 43500),
	   ('Samantha', 'Bush', 'Meyers Middle School', '2011-10-30', 36200),
	   ('Betty', 'Diaz', 'Meyers Middle School', '2005-08-30', 43500),
	   ('Kathleen', 'Roush', 'F.D. Roosevelt', '2010-10-27', 38500);
	   
SELECT * FROM public.teachers
