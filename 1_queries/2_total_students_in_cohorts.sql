SELECT COUNT(id)
FROM students
WHERE cohort_id < 4;



SELECT students.name AS students_name, students.start_date AS student_start_date, cohorts.name AS cohort_name, cohorts.start_date AS cohort_start_date
FROM students
INNER JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;