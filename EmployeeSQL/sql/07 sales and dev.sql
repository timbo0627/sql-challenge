--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, 
--and department name (4 points)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE de.dept_no IN
(
	SELECT dept_no
	FROM departments
	WHERE dept_name IN ('Sales','Development')
)
ORDER BY e.emp_no;