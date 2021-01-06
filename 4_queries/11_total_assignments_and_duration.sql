SELECT day, COUNT(assignments) AS number_of_assignment, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;
