SELECT teachers.name AS teacher, cohorts.name as cohort, COUNT(assistance_requests.id)
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name= 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;