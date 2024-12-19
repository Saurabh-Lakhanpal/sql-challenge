-- Drop tables that reference others first
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;

-- Create titles first since it's not dependent on any other table
CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(20) NOT NULL
);

-- Now create employees table, referencing titles
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date DATE, 
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create departments table
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
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
    emp_no INTEGER NOT NULL PRIMARY KEY,
    salary INTEGER DEFAULT 0 CHECK (salary >= 0),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);