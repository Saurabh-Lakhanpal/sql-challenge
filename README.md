# sql-challenge

## Solution

### ERD Diagram
<iframe src="https://app.quickdatabasediagrams.com/#/" width="800" height="600"></iframe>


As a new data engineer research about people whom the company employed during the 1980s and 1990s. 
- Design the tables schemas to hold the data from the CSV files.
- Import the CSV files into a SQL database.
- Perform data modeling.
- Perform data engineering.
- And analyze the data to answer questions about the data.

### Data csv:
- [departments.csv](https://github.com/Saurabh-Lakhanpal/sql-challenge/blob/main/data/departments.csv)
- [dept_emp.csv](https://github.com/Saurabh-Lakhanpal/sql-challenge/blob/main/data/departments.csv)
- [dept_manager.csv](https://github.com/Saurabh-Lakhanpal/sql-challenge/blob/main/data/departments.csv)
- [employees.csv](https://github.com/Saurabh-Lakhanpal/sql-challenge/blob/main/data/employees.csv)
- [salaries.csv](https://github.com/Saurabh-Lakhanpal/sql-challenge/blob/main/data/salaries.csv)
- [titles.csv](https://github.com/Saurabh-Lakhanpal/sql-challenge/blob/main/data/titles.csv)

### Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.

### Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Ensure:
- To specify the data types
- Primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.
- Foreign keys creating the tables in the correct order to handle the foreign keys., and other constraints.

### Data Analysis
- List the employee number, last name, first name, sex, and salary of each employee.

- List the first name, last name, and hire date for the employees who were hired in 1986.

- List the manager of each department along with their department number, department name, employee number, last name, and first name.

- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

- List each employee in the Sales department, including their employee number, last name, and first name.

- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).