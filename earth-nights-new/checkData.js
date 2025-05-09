const pool = require('./db');

async function checkData() {
    try {
        // Check card table
        const cardResult = await pool.query('SELECT COUNT(*) FROM card');
        console.log('Number of cards:', cardResult.rows[0].count);

        // Check playlist table
        const playlistResult = await pool.query('SELECT COUNT(*) FROM playlist');
        console.log('Number of playlist items:', playlistResult.rows[0].count);

        // Show some sample data
        const sampleCard = await pool.query('SELECT * FROM card LIMIT 1');
        console.log('\nSample card:', sampleCard.rows[0]);

        const samplePlaylist = await pool.query('SELECT * FROM playlist LIMIT 1');
        console.log('\nSample playlist item:', samplePlaylist.rows[0]);

    } catch (error) {
        console.error('Error checking data:', error);
    } finally {
        await pool.end();
    }
}

checkData(); 