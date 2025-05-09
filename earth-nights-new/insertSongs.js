const pool = require('./db');

// Example songs array - modify this with your songs
const songs = [
    {
        episode: 1,
        name: 'Song Name 1',
        artist: 'Artist 1',
        url: 'https://example.com/song1.mp3',
        cover: 'https://example.com/cover1.jpg',
        theme: '#46718b',
        album: 'Album 1'
    },
    {
        episode: 1,
        name: 'Song Name 2',
        artist: 'Artist 2',
        url: 'https://example.com/song2.mp3',
        cover: 'https://example.com/cover2.jpg',
        theme: '#46718b',
        album: 'Album 2'
    }
    // Add more songs as needed
];

async function insertSongs() {
    try {
        // Begin transaction
        await pool.query('BEGIN');

        // Insert each song
        for (const song of songs) {
            const query = `
                INSERT INTO playlist 
                (episode, name, artist, url, cover, theme, album)
                VALUES ($1, $2, $3, $4, $5, $6, $7)
                RETURNING id;
            `;
            
            const values = [
                song.episode,
                song.name,
                song.artist,
                song.url,
                song.cover,
                song.theme,
                song.album
            ];

            const result = await pool.query(query, values);
            console.log(`Inserted song: ${song.name} with ID: ${result.rows[0].id}`);
        }

        // Commit transaction
        await pool.query('COMMIT');
        console.log('All songs inserted successfully!');

    } catch (error) {
        // Rollback transaction on error
        await pool.query('ROLLBACK');
        console.error('Error inserting songs:', error);
    } finally {
        // Close the pool
        await pool.end();
    }
}

// Run the insert function
insertSongs(); 