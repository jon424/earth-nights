import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Card, Image } from 'semantic-ui-react';

interface Episode {
  id: number;
  card_image: string;
  title: string;
  date_of_show: string;
  teaser: string;
}

const Post: React.FC = () => {
  const [data, setData] = useState<Episode[]>([]);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch("/api/episode");
      const jsonData = await response.json();
      setData(jsonData);
    };
    fetchData();
  }, []);

  return (
    <div>
      {data.map((item, i) => (
        <Link to={`/episode/${item.id}`} key={i}>
          <Card>
            <Image 
              className="card-img" 
              src={item.card_image} 
              width="640" 
              height="360" 
              wrapped 
              ui={false} 
            />
            <Card.Content>
              <Card.Header>{item.title}</Card.Header>
              <Card.Meta>posted on {item.date_of_show}</Card.Meta>
              <Card.Description>
                {item.teaser}
              </Card.Description>
            </Card.Content>
          </Card>
        </Link>
      ))}
    </div>
  );
};

export default Post;