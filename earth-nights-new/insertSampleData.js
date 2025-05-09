// const pool = require('./db');

// async function insertSampleData() {
//     try {
//         // Begin transaction
//         await pool.query('BEGIN');

//         // Insert sample card data
//         const cardQuery = `
//             INSERT INTO card (title, date_of_show, teaser, card_image)
//             VALUES ($1, $2, $3, $4)
//             RETURNING id;
//         `;
        
//         const cardValues = [
//             'Earth Nights #1',
//             'April 24, 2020',
//             'Welcome to the first Earth Nights playlist!',
//             'https://cdn.technologynetworks.com/tn/images/thumbs/jpeg/640_360/the-psychedelic-revolution-in-psychiatry-333007.jpg'
//         ];

//         const cardResult = await pool.query(cardQuery, cardValues);
//         const episodeId = cardResult.rows[0].id;
//         console.log(`Created episode card with ID: ${episodeId}`);

//         // Insert sample playlist data
//         const playlistQuery = `
//             INSERT INTO playlist 
//             (episode, name, artist, url, cover, theme, album, post_title, post_content1)
//             VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
//             RETURNING id;
//         `;

//         const playlistValues = [
//             episodeId,
//             'The Opera House',
//             'The Olivia Tremor Control',
//             'https://dl.dropbox.com/s/dhvancbcyoadfkn/The%20Opera%20House%20-%20OTC.wav',
//             'https://dl.dropbox.com/s/15yusr42dogvi0t/dusk_at_cubist_castle.jpg',
//             '#46718b',
//             'Music From The Unrealized Film Script: Dusk At Cubist Castle',
//             'Welcome to The First Earth Nights Playlist!',
//             'We begin the series with a playlist full of great music to enjoy.'
//         ];

//         const playlistResult = await pool.query(playlistQuery, playlistValues);
//         console.log(`Created playlist entry with ID: ${playlistResult.rows[0].id}`);

//         // Commit transaction
//         await pool.query('COMMIT');
//         console.log('Sample data inserted successfully!');

//     } catch (error) {
//         // Rollback transaction on error
//         await pool.query('ROLLBACK');
//         console.error('Error inserting sample data:', error);
//     } finally {
//         // Close the pool
//         await pool.end();
//     }
// }

// // Run the insert function
// insertSampleData(); 