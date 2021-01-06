SELECT  DISTINCT teachers.name, cohorts.name, COUNT(teachers.name)
FROM teachers
INNER JOIN assistance_requests
ON assistance_requests.teacher_id = teachers.id
INNER JOIN students
ON students.id = assistance_requests.student_id
INNER JOIN cohorts
ON cohorts.ID = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name;
ORDER BY teachers.name;
