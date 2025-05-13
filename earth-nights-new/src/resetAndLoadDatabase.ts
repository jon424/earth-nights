import { Pool } from 'pg';
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';

dotenv.config();

const pool = new Pool({
  user: process.env.PG_USER,
  password: process.env.PG_PASSWORD,
  host: process.env.PG_HOST,
  port: process.env.PG_PORT ? parseInt(process.env.PG_PORT) : 5432,
  database: process.env.PG_DATABASE
});

async function resetAndLoadDatabase(): Promise<void> {
  try {
    // Drop existing tables first
    await pool.query(`
      DROP TABLE IF EXISTS messages;
      DROP TABLE IF EXISTS playlist;
      DROP TABLE IF EXISTS card;
    `);
    console.log('Dropped existing tables');

    // Read the SQL file
    const sqlFile = path.join(__dirname, '..', 'tables', 'database.sql');
    const sql = fs.readFileSync(sqlFile, 'utf8');

    // Execute the SQL commands
    await pool.query(sql);
    console.log('Database reset and loaded successfully');
  } catch (err) {
    console.error('Error resetting and loading database:', err instanceof Error ? err.message : 'Unknown error');
    throw err;
  } finally {
    await pool.end();
  }
}

resetAndLoadDatabase().catch(console.error); 