const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const userInput = process.argv.slice(2);

//SQL QUERIES
pool.query(`
  SELECT students.id AS id, students.name AS name, cohorts.name AS cohort
  FROM students
  JOIN cohorts
  ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE '%${userInput[0]}%'
  LIMIT ${userInput[1] || 5};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in ${user.cohort} cohort`);
  });
})
.catch(err => console.error('query error', err.stack));

