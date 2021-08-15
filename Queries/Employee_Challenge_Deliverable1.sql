-- Use Dictinct with Orderby to remove duplicate rows

drop table title_of_retirees

SELECT DISTINCT ON (e.emp_no) 
e.emp_no, 
e.birth_date, 
e.first_name, 
e.last_name, 
ti.title, 
ti.from_date, 
ti.to_date
INTO title_of_retirees
FROM employees as e
	INNER JOIN titles as ti ON e.emp_no = ti.emp_no
where (e.birth_date between '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.to_date DESC;

select * from title_of_retirees

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name,
t.title
INTO unique_titles
FROM employees AS e 
	INNER JOIN  titles AS t ON e.emp_no = t.emp_no
where e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no, t.to_date DESC;

select * from unique_titles

SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY 1 DESC;

SELECT * FROM retiring_titles

