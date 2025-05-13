export interface Card {
  id: number;
  title: string;
  description: string;
  image_url: string;
  created_at: Date;
}

export interface Playlist {
  id: number;
  episode: number;
  title: string;
  artist: string;
  url: string;
  created_at: Date;
}

export interface Message {
  id: number;
  name: string;
  email: string;
  message: string;
  created_at: Date;
} 