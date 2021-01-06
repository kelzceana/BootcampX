SELECT assignments.id, assignments.name, day, chapter, COUNT(assignments.id) AS total_requests
FROM assignments
INNER JOIN assistance_requests
ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;