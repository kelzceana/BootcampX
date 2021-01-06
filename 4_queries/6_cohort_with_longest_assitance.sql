
  SELECT cohorts.name AS cohort_name, AVG(completed_at-started_at) AS avg_assistance_time
  FROM cohorts
  INNER JOIN students 
  ON students.cohort_id = cohorts.id
  INNER JOIN assistance_requests
  ON assistance_requests.student_id = students.id
  GROUP BY cohorts.name
  ORDER BY avg_assistance_time DESC
  LIMIT 1;


