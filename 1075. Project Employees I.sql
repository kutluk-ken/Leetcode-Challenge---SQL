SELECT DISTINCT p.project_id, round(sum(experience_years)/count(e.name),2) AS average_years
FROM Project p join Employee e on p.employee_id = e.employee_id
GROUP BY p.project_id
