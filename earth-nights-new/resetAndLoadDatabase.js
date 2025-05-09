const pool = require('./db');
const fs = require('fs');
const path = require('path');

async function resetAndLoadDatabase() {
    try {
        // Begin transaction
        await pool.query('BEGIN');

        // Drop existing tables
        await pool.query(`
            DROP TABLE IF EXISTS messages;
            DROP TABLE IF EXISTS playlist;
            DROP TABLE IF EXISTS card;
        `);
        console.log('Dropped existing tables');

        // Read the SQL file
        const sqlFile = path.join(__dirname, 'tables', 'database.sql');
        const sql = fs.readFileSync(sqlFile, 'utf8');

        // Execute the SQL
        await pool.query(sql);

        // Commit transaction
        await pool.query('COMMIT');
        console.log('Database reset and loaded successfully!');

    } catch (error) {
        // Rollback transaction on error
        await pool.query('ROLLBACK');
        console.error('Error resetting and loading database:', error);
    } finally {
        // Close the pool
        await pool.end();
    }
}

// Run the reset and load function
resetAndLoadDatabase(); 