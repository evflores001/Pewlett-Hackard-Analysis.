-- create retirement titles table
SELECT t.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees e
JOIN titles t on e.emp_no = tt.emp_no
WHERE e.birth_date BETWEEN ('1952-01-01') AND ('1955-12-31')
ORDER BY t.emp_no;

-- deliverable 1.2 unique titles
SELECT DISTINCT ON (t.emp_no) t.emp_no,
e.first_name,
e.last_name,
t.title
INTO unique_titles
FROM employees e
JOIN titles t on e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN ('1952-01-01') AND ('1955-12-31')
ORDER BY t.emp_no, t.to_date DESC;


--deliverable 1.3 retiring titles
SELECT COUNT(title),
title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC


--deliverable 2
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    JOIN titles t ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
    AND de.to_date = '9999-01-01')
ORDER BY emp_no