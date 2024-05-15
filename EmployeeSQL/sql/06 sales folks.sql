--List each employee in the Sales department, 
--including their employee number, last name, 
--and first name (2 points)
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN
(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN
	(
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'
	)
)
ORDER by emp_no;