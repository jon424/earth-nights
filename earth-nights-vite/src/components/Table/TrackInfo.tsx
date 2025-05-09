import React from 'react';
import './table.css';

interface TrackData {
  album_art: string;
  artist: string;
  track_title: string;
  album_title: string;
}

interface TableProps {
  data: TrackData[];
}

interface RenderRowProps {
  data: TrackData;
}

const RenderRow: React.FC<RenderRowProps> = ({ data }) => (
  <>
    <td><img src={data.album_art} width="90px" height="90px" alt="Album Art" /></td>
    <td>{data.artist}</td>
    <td>{data.track_title}</td>
    <td>{data.album_title}</td>
  </>
);

const Table: React.FC<TableProps> = ({ data }) => {
  const getKeys = (): (keyof TrackData)[] => {
    return Object.keys(data[0]) as (keyof TrackData)[];
  };

  const getHeader = () => {
    const keys = getKeys();
    return keys.map((key) => (
      <th key={key}>{key.toUpperCase()}</th>
    ));
  };

  const getRowsData = () => {
    const keys = getKeys();
    return data.map((row, index) => (
      <tr key={index}>
        <RenderRow data={row} />
      </tr>
    ));
  };

  return (
    <div>
      {data.length > 0 ? (
        <table>
          <thead>
            <tr>{getHeader()}</tr>
          </thead>
          <tbody>
            {getRowsData()}
          </tbody>
        </table>
      ) : (
        <p>Error Loading Playlist</p>
      )}
    </div>
  );
};

export default Table;