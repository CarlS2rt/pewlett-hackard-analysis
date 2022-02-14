DROP TABLE retirees;

SELECT e.emp_no,
    e.first_name,
	e.last_name,
	e.birth_date,
    de.to_date,
	di.dept_name
INTO retirees
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no
LEFT JOIN dept_info as di
ON de.emp_no = di.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND to_date = '9999-01-01'
ORDER BY birth_date;

SELECT dept_name, COUNT (*)
FROM retirees
WHERE (birth_date BETWEEN '1955-01-01' AND '1955-12-31')
GROUP BY dept_name
ORDER BY COUNT DESC;

SELECT to_date, COUNT (*)
FROM retirees
WHERE (birth_date BETWEEN '1952-01-01' AND '1952-12-31')
GROUP BY to_date;