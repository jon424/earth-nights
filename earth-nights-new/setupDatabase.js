const pool = require('./db');

async function setupDatabase() {
    try {
        // Begin transaction
        await pool.query('BEGIN');

        // Create card table
        await pool.query(`
            CREATE TABLE IF NOT EXISTS card (
                ID SERIAL PRIMARY KEY,
                title VARCHAR(50),
                date_of_show VARCHAR(30),
                teaser VARCHAR(50),
                card_image VARCHAR(500)
            );
        `);
        console.log('Created card table');

        // Create playlist table
        await pool.query(`
            CREATE TABLE IF NOT EXISTS playlist (
                ID SERIAL PRIMARY KEY,
                episode SMALLINT,
                name VARCHAR(100),
                artist VARCHAR(100),
                url VARCHAR(1000),
                cover VARCHAR(500),
                lrc VARCHAR(5),
                theme VARCHAR(10),
                album VARCHAR(100),
                post_title TEXT,
                post_content1 TEXT,
                post_content2 TEXT,
                post_content3 TEXT
            );
        `);
        console.log('Created playlist table');

        // Create messages table
        await pool.query(`
            CREATE TABLE IF NOT EXISTS messages (
                ID SERIAL PRIMARY KEY,
                name VARCHAR(100),
                email VARCHAR(100),
                message VARCHAR(1000)
            );
        `);
        console.log('Created messages table');

        // Commit transaction
        await pool.query('COMMIT');
        console.log('Database setup completed successfully!');

    } catch (error) {
        // Rollback transaction on error
        await pool.query('ROLLBACK');
        console.error('Error setting up database:', error);
    } finally {
        // Close the pool
        await pool.end();
    }
}

// Run the setup function
setupDatabase(); 