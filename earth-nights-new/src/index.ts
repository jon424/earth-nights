import express, { Request, Response } from 'express';
import cors from 'cors';
import path from 'path';
import { pool } from './db';

const app = express();
const PORT = process.env.PORT || 5000;

// Middleware
app.use(cors({
  origin: process.env.CORS_ORIGIN || 'http://localhost:3000',
  credentials: true
}));
app.use(express.json());

if (process.env.NODE_ENV === "production") {
  app.use(express.static(path.join(__dirname, "../client/build")));
}

console.log('dirname', __dirname);
console.log(path.join(__dirname, "../client/build"));

// Routes

// Get all episodes
app.get('/api/episode', async (_req: Request, res: Response) => {
  try {
    const allEpisodes = await pool.query("SELECT * FROM card ORDER BY id DESC");
    res.json(allEpisodes.rows);
  } catch (err) {
    console.error(err instanceof Error ? err.message : 'Unknown error');
    res.status(500).json({ error: 'Internal server error' });
  }
});

// Select one episode
app.get('/api/episode/:id', async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const episodeContent = await pool.query(
      "SELECT * FROM card WHERE id = $1",
      [id]
    );

    if (episodeContent.rows.length === 0) {
      return res.status(404).json({ error: 'Episode not found' });
    }

    res.json(episodeContent.rows[0]);
  } catch (err) {
    console.error(err instanceof Error ? err.message : 'Unknown error');
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.get('/api/episode/:id/playlist', async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    console.log('Fetching playlist for episode:', id);
    
    const episodeContent = await pool.query(
      "SELECT * FROM playlist WHERE episode = $1",
      [id]
    );
    
    console.log('Query result:', episodeContent.rows);
    res.json(episodeContent.rows);
  } catch (err) {
    console.error('Error fetching playlist:', err instanceof Error ? err.message : 'Unknown error');
    res.status(500).json({ error: 'Internal server error' });
  }
});

interface MessageBody {
  name: string;
  email: string;
  message: string;
}

app.post("/send", async (req: Request<{}, {}, MessageBody>, res: Response) => {
  try {
    const { name, email, message } = req.body;
    const newMessage = await pool.query(
      "INSERT INTO messages (name, email, message) VALUES ($1, $2, $3) RETURNING *",
      [name, email, message]
    );
    res.json(newMessage.rows[0]);
  } catch (err) {
    console.error(err instanceof Error ? err.message : 'Unknown error');
    res.status(500).json({ error: 'Internal server error' });
  }
});

app.get('/', (_req: Request, res: Response) => {
  res.json({ message: 'Earth Nights API is running' });
});

app.listen(PORT, () => {
  console.log(`server has started on http://localhost:${PORT}`);
}); 