                        --SQL FILE OF EXAMPLE QUERIES ---WINES--

--Testing if all the tables were correctly created

SELECT * FROM country
SELECT * FROM province
SELECT * FROM region
SELECT * FROM winery
SELECT * FROM variety
SELECT * FROM vineyard
SELECT * FROM clean_wine_db_df



--Obtain all information from 7th Table: NORMALIZED DATA

SELECT co.country, re.region, pr.province, wi.winery, va.variety, vi.vineyard, df.title , df.points , df.price , df.review
FROM clean_wine_db_df AS df
LEFT JOIN country AS co
ON co.index=df.country_id
LEFT JOIN region AS re
ON re.index=df.region_id
LEFT JOIN province AS pr
ON pr.index=df.province_id
LEFT JOIN winery AS wi
ON wi.index=df.winery_id
LEFT JOIN variety AS va
ON va.index=df.variety_id
LEFT JOIN vineyard AS vi
ON vi.index=df.vineyard_id;










--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name, depandemp.from_date, depandemp.to_date
FROM employees AS emp
LEFT JOIN departments_and_employees AS depandemp
ON emp.emp_no=depandemp.emp_no
LEFT JOIN departments AS dep
on depandemp.dept_no=dep.dept_no
WHERE dep.dept_no='d007'

UNION

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name, depandemp.from_date, depandemp.to_date
FROM employees AS emp
LEFT JOIN departments_and_employees AS depandemp
ON emp.emp_no=depandemp.emp_no
LEFT JOIN departments AS dep
on depandemp.dept_no=dep.dept_no
WHERE dep.dept_no='d005';

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "last_name_counts"
FROM employees
GROUP BY last_name
ORDER BY "last_name_counts" DESC;


--Epilogue

SELECT emp.emp_no, emp.first_name,  emp.last_name, emp.gender, emp.hire_date, ti.title, depandemp.from_date, depandemp.to_date, dep.dept_name, sal.salary
FROM employees AS emp
LEFT JOIN departments_and_employees AS depandemp
ON emp.emp_no=depandemp.emp_no
LEFT JOIN departments AS dep
ON depandemp.dept_no=dep.dept_no
LEFT JOIN titles AS ti
ON emp.emp_no=ti.emp_no
LEFT JOIN salaries AS sal
ON emp.emp_no=sal.emp_no
WHERE emp.emp_no=499942;

SELECT * FROM department_manager LIMIT 10;
SELECT * FROM departments LIMIT 10;
SELECT * FROM employees LIMIT 10;
SELECT * FROM salaries LIMIT 10;
SELECT * FROM departments_and_employees LIMIT 10;
SELECT * FROM titles LIMIT 10;


