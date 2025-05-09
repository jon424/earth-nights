import React, { useEffect, useState } from 'react';
import { Link, useParams } from 'react-router-dom';
import AudioPlayer from './AudioPlayer';
import Table from './TrackInfo';
import '../../styles/aplayer.css';

interface Song {
  name: string;
  artist: string;
  url: string;
  cover: string;
  lrc: string;
  theme: string;
  album: string;  // This is required in the interface
}

interface EpisodeData {
  post_title: string;
  post_content1: string;
  post_content2: string;
  post_content3: string;
}

interface TrackData {
  album_art: string;
  artist: string;
  track_title: string;
  album_title: string;
}

const PostContent: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const [audio, setAudio] = useState<Song[]>([]);
  const [data, setData] = useState<TrackData[]>([]);
  const [episodeData, setEpisodeData] = useState<EpisodeData[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch(`/api/episode/${id}/playlist`);
      const jsonData = await response.json();
      
      const songs = jsonData;
      const audioData = Object.keys(songs).map(key => ({
        name: songs[key].name,
        artist: songs[key].artist,
        url: songs[key].url,
        cover: songs[key].cover,
        lrc: songs[key].lrc,
        theme: songs[key].theme,
        album: songs[key].album || '' // Add the album property, with a fallback empty string
      }));
      setAudio(audioData);

      const trackData = Object.keys(songs).map(key => ({
        album_art: songs[key].cover,
        artist: songs[key].artist,
        track_title: songs[key].name,
        album_title: songs[key].album || '' // Add the album property, with a fallback empty string
      }));
      setData(trackData);
      setEpisodeData(jsonData);
    };

    fetchData();
  }, [id]);

  return (
    <>
      <AudioPlayer audio={audio} />
      <Link id='home-link' to='/' className='active'>Homepage</Link>
      {episodeData.map((item) => (
        <>
          <h2 className="show-title">{item.post_title}</h2>
          <div className="episode-post-content">
            <p>{item.post_content1}</p>
            <p>{item.post_content2}</p>
            <p>{item.post_content3}</p>
          </div>
        </>
      ))}
      <div className="table-div">
        <Table data={data} />
      </div>
      <div className="bottom-link">
      </div>
    </>
  );
};

export default PostContent;