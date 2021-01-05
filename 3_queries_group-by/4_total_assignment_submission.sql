SELECT cohorts.name AS corhot_name, COUNT(assignment_submissions.id) AS total_submission
FROM students
INNER JOIN assignment_submissions
ON assignment_submissions.student_id = students.id
INNER JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_submission DESC;