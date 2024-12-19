-- Import the data from csv in the order that tables were created.
-- However the employees table has to be written over due to the date time format in the csv
-- Load csv in order: titles (Using postgres UI)
-- Cretae a temporary to import dates as strings 
CREATE TABLE employees_temp (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date TEXT, 
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    sex CHAR(1) NOT NULL,
    hire_date TEXT NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Load csv employees_temp into (Using postgres UI)
-- Insert into employees table from the employees_temp table as birth date and hire date as data type date.
INSERT INTO employees (emp_no, emp_title_id, birth_date, first_name, last_name,sex,hire_date)
SELECT 
	et.emp_no, 
	et.emp_title_id, 
	TO_DATE(et.birth_date, 'MM-DD-YYYY'),
	et.first_name, 
	et.last_name,
	et.sex,
	TO_DATE(et.hire_date, 'MM-DD-YYYY')
FROM employees_temp AS et;

-- Inspect employees table
SELECT * FROM employees;

-- Drop the employees_temp
DROP TABLE employees_temp;

-- Load csv of other tables in this order using the UI: departments, dept_emp, dept_manager and then salaries.

-- The other option was to have bith_date and hire_date as type text in the schema itself and then after uplaoding the csv data change the data type of the table.
-- Below is the SQL query for that:
-- ALTER TABLE employees
-- ALTER COLUMN birth_date SET DATA TYPE DATE USING TO_DATE(birth_date, 'MM-DD-YYYY'),
-- ALTER COLUMN birth_date SET DATA TYPE DATE USING TO_DATE(hire_date, 'MM-DD-YYYY');

