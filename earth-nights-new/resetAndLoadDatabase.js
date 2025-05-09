const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

const pool = new Pool({
  user: process.env.PG_USER,
  password: process.env.PG_PASSWORD,
  host: process.env.PG_HOST,
  port: process.env.PG_PORT,
  database: process.env.PG_DATABASE
});

async function resetAndLoadDatabase() {
  try {
    // Read the SQL file
    const sqlFile = path.join(__dirname, 'tables', 'database.sql');
    const sql = fs.readFileSync(sqlFile, 'utf8');

    // Execute the SQL commands
    await pool.query(sql);
    console.log('Database reset and loaded successfully');
  } catch (err) {
    console.error('Error resetting and loading database:', err);
    throw err;
  } finally {
    await pool.end();
  }
}

resetAndLoadDatabase().catch(console.error); 