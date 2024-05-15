--drop table dept_emp
--drop table dept_manager
--drop table departments
--drop table employees
--drop table salaries
--drop table titles
CREATE TABLE titles (
	title_id varchar(10) PRIMARY KEY,
	title varchar(100) 
);
CREATE TABLE salaries (
	emp_no varchar(10) PRIMARY KEY,
	salary int
)
CREATE TABLE employees (
    emp_no varchar(10) PRIMARY KEY,
    emp_title_id varchar(10),
    birth_date date,
    first_name varchar(36),
    last_name varchar(36),
    sex char,
    hire_date date,
    -- Foreign key constraints referencing other tables
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(200)
)
CREATE TABLE dept_manager (
	dept_no varchar(10),
	emp_no varchar(10) PRIMARY KEY,
	-- Foreign key constraints referencing other tables
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
)
CREATE TABLE dept_emp (
    emp_no varchar(10),
    dept_no varchar(10),
    -- Composite primary key
    PRIMARY KEY (emp_no, dept_no),
    -- Foreign key constraints referencing other tables
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);