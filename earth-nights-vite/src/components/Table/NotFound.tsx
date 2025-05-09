import React from 'react';
import { Link } from 'react-router-dom';

const divStyle: React.CSSProperties = {
  color: 'blue',
  textDecoration: 'underline red'
};

const NotFound: React.FC = () => (
  <div>
    <h1 style={{ color: 'white' }}>Page Not found</h1>
    <Link to='/' className='active'>
      <h1 style={divStyle}>Go Back Home</h1>
    </Link>
  </div>
);

export default NotFound;