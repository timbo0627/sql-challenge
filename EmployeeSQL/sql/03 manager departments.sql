--List the manager of each department along with their 
--department number, department name, employee number, 
--last name, and first name (2 points)
SELECT b.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager as b
INNER JOIN departments as d ON b.dept_no = d.dept_no
INNER JOIN employees as e ON b.emp_no = e.emp_no;