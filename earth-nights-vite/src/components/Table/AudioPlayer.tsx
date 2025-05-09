import React from 'react';
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

export default class AudioPlayer extends React.Component<AudioPlayerProps> {
  private ap: any;

  onPlay = () => {
    console.log('on play');
  };

  onPause = () => {
    console.log('on pause');
  };

  onError = (e: Error) => {
    console.error('Audio player error:', e);
  };

  onInit = (ap: any) => {
    this.ap = ap;
  };

  render() {
    const props = {
      theme: '#F57F17',
      lrcType: 3,
      audio: this.props.audio,
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
        {props.audio.length > 0 ? (
          <ReactAplayer
            {...props}
            onInit={this.onInit}
            onPlay={this.onPlay}
            onPause={this.onPause}
            onError={this.onError}
          />
        ) : (
          <p>Loading Audio...</p>
        )}
      </div>
    );
  }
}