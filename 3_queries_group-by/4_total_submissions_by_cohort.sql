SELECT cohorts.name as cohort, COUNT(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students on cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;