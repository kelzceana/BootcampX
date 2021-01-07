const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  host: 'localhost',
  password: '123',
  database: 'bootcampx'
});
console.log('connected')
const userInput = process.argv.slice(2)
pool.query(`
SELECT DISTINCT teachers.name AS name, cohorts.name AS cohort
FROM teachers
INNER JOIN assistance_requests
ON assistance_requests.teacher_id = teachers.id
INNER JOIN students
ON students.id = assistance_requests.student_id
INNER JOIN cohorts
ON cohorts.ID = students.cohort_id
WHERE cohorts.name = '${userInput[0]}'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(teacher => {
    console.log(`${teacher.cohort}: ${teacher.name}`)
  });
})
.catch(err => {
  console.log('we have an error')
})