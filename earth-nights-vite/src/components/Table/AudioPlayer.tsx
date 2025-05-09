import ReactAplayer from 'react-aplayer';
import '../../styles/aplayer.css';

interface AudioItem {
  name: string;
  artist: string;
  url: string;
  cover: string;
  lrc: string;
  theme: string;
}

interface AudioPlayerProps {
  audio: AudioItem[];
}

const AudioPlayer = ({ audio }: AudioPlayerProps) => {
  const onPlay = () => {
    console.log('on play');
  };

  const onPause = () => {
    console.log('on pause');
  };

  const onError = (e: Error) => {
    console.error('Audio player error:', e);
  };

  const onInit = () => {
    // Initialize player if needed
  };

  const props = {
    theme: '#F57F17',
    lrcType: 3,
    audio: audio,
    autoplay: false,
    preload: 'auto' as const,
    volume: 0.7,
    mutex: true,
    listFolded: false,
    listMaxHeight: '90px',
    fixed: false,
    mini: false,
    order: 'list' as const,
    loop: 'all' as const,
    constrols: true
  };

  return (
    <div className="aplayer-container">
      {audio.length > 0 ? (
        <ReactAplayer
          {...props}
          onInit={onInit}
          onPlay={onPlay}
          onPause={onPause}
          onError={onError}
        />
      ) : (
        <p>Loading Audio...</p>
      )}
    </div>
  );
};

export default AudioPlayer;