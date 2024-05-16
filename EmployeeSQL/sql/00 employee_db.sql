--drop table dept_emp
--drop table dept_manager
--drop table departments
--drop table employees
--drop table salaries
--drop table titles
CREATE TABLE titles (
	title_id varchar(10) PRIMARY KEY NOT NULL,
	title varchar(100) NOT NULL
);
CREATE TABLE salaries (
	emp_no int PRIMARY KEY NOT NULL,
	salary int NOT NULL
)
CREATE TABLE employees (
    emp_no int PRIMARY KEY NOT NULL,
    emp_title_id varchar(10) NOT NULL,
    birth_date date,
    first_name varchar(36) NOT NULL,
    last_name varchar(36) NOT NULL,
    sex char,
    hire_date date,
    -- Foreign key constraints referencing other tables
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY NOT NULL,
	dept_name varchar(200) NOT NULL
)
CREATE TABLE dept_manager (
	dept_no varchar(10) NOT NULL,
	emp_no int PRIMARY KEY NOT NULL,
	-- Foreign key constraints referencing other tables
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
)
CREATE TABLE dept_emp (
    emp_no int NOT NULL,
    dept_no varchar(10) NOT NULL,
    -- Composite primary key
    PRIMARY KEY (emp_no, dept_no),
    -- Foreign key constraints referencing other tables
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);