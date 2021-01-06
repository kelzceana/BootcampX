SELECT teachers.name, COUNT(assistance_requests.id) AS total_assistance
FROM assistance_requests
INNER JOIN teachers
ON teachers.id = assistance_requests.teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';