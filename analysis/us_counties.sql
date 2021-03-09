CREATE TABLE supervisor_salaries (
town varchar(30),
county varchar(30),
supervisor varchar(30),
start_date date,
salary money,
benefits money
);

COPY supervisor_salaries (town, supervisor, salary)
FROM 'C:\Users\elgin\OneDrive\Documents\my_query\analysis\resources\supervisor_salaries.csv'
WITH (FORMAT CSV, HEADER);

select * from supervisor_salaries;


