SELECT SUM(score) AS score, G.emp_no, emp_name, position, email 
FROM hr_grade G
JOIN hr_employees E ON G.emp_no = E.emp_no
JOIN hr_department D ON E.dept_id = D.dept_id
GROUP BY G.emp_no
ORDER BY score DESC
LIMIT 1;