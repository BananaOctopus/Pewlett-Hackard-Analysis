SELECT DISTINCT ON (e.emp_no) 
e.emp_no, 
e.birth_date, 
e.first_name, 
e.last_name,
de.from_date,
de.to_date,
t.title
into mentorship_eligibilty
from employees as e
	inner join dept_emp as de ON e.emp_no = de.emp_no
	inner join titles as t on e.emp_no = t.emp_no
where (e.birth_date between '1965-01-01' AND '1965-12-31')AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

drop table mentorship_eligibilty

select * from mentorship_eligibilty
