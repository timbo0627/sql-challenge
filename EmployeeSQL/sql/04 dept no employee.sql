--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name (2 points)
SELECT b.dept_no, b.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS b
INNER JOIN employees AS e ON b.emp_no=e.emp_no
INNER JOIN departments AS d ON b.dept_no=d.dept_no