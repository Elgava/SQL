CREATE DATABASE try_it_yourself;

CREATE TABLE zoo (
	id bigserial,
	animal_species varchar(25),
	animal_name varchar(50),
	animal_gender varchar(50),
	DOB date,
	age numeric
);

INSERT INTO zoo (animal_species, animal_name, animal_gender, dob, age)
VALUES ('snake', 'floppy', 'male', '2019-10-11', 2),
	   ('turtle', 'yumie', 'female', '2016-03-14', 4),
	   ('iguana', 'limpaliz', 'female', '2014-03-08', 7),
	   ('chimpanzee', 'archantos', 'male', '2009-11-04', 11),
	   ('lion', 'tommy', 'male', '2010-01-25', 11),
	   ('lynx', 'sasha', 'female', '2015-02-05', 6);
	   