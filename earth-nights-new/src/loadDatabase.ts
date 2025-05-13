import { pool } from './db';
import fs from 'fs';
import path from 'path';

async function loadDatabase(): Promise<void> {
    try {
        // Read the SQL file
        const sqlFile = path.join(__dirname, '..', 'tables', 'database.sql');
        const sql = fs.readFileSync(sqlFile, 'utf8');

        // Begin transaction
        await pool.query('BEGIN');

        // Execute the SQL
        await pool.query(sql);

        // Commit transaction
        await pool.query('COMMIT');
        console.log('Database loaded successfully!');

    } catch (error) {
        // Rollback transaction on error
        await pool.query('ROLLBACK');
        console.error('Error loading database:', error instanceof Error ? error.message : 'Unknown error');
    } finally {
        // Close the pool
        await pool.end();
    }
}

// Run the load function
loadDatabase().catch(console.error); 