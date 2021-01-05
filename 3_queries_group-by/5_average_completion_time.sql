SELECT students.name AS student_id, AVG(duration) AS average_assignment_duration
FROM students
INNER JOIN assignment_submissions
ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;