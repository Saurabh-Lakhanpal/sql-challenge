-- Drop tables that reference others first
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

-- Create titles first since it's not dependent on any other table
CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY, -- inherently not null
    title VARCHAR(20) NOT NULL
);

-- Create employees table, referencing titles
-- As we see in the csv that the birth date and the hire date as in mm-dd-yyyy format, we can also set this table for date columns as text and
-- eventually alter the column's data type to date with that format. However, I choose this way where I am creating the schema as the table should be and then will
-- load the csv into a temp table and then drop the tmp table.
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY, -- inherently not null
    emp_title_id CHAR(5) NOT NULL,
    birth_date DATE, -- can be null and updated later
    first_name VARCHAR(20) NOT NULL, -- Must have a name to setup a new employee
    last_name VARCHAR(20), -- -- can be null and updated later, some employees might not use last name
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create departments table
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY, -- inherently not null
    dept_name VARCHAR(20) NOT NULL
);

-- Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
    dept_no CHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INTEGER NOT NULL PRIMARY KEY, -- inherently not null
    salary INTEGER DEFAULT 0 CHECK (salary >= 0), -- cannot have negative salary
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);