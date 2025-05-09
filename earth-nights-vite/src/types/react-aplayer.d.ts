declare module 'react-aplayer' {
    import { Component } from 'react';
  
    interface APlayerProps {
      theme?: string;
      lrcType?: number;
      audio: Array<{
        name: string;
        artist: string;
        url: string;
        cover: string;
        lrc: string;
        theme?: string;
      }>;
      autoplay?: boolean;
      preload?: 'auto' | 'metadata' | 'none';
      volume?: number;
      mutex?: boolean;
      listFolded?: boolean;
      listMaxHeight?: string;
      fixed?: boolean;
      mini?: boolean;
      order?: 'list' | 'random';
      loop?: 'all' | 'one' | 'none';
      onInit?: (ap: any) => void;
      onPlay?: () => void;
      onPause?: () => void;
      onError?: (error: Error) => void;
    }
  
    export default class ReactAplayer extends Component<APlayerProps> {}
  }