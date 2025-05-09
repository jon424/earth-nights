import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Logo from './components/Logo';
import Post from './components/Post';
import NotFound from './components/Table/NotFound';
import PostContent from './components/Table/PostContent';
import Footer from './components/Table/Footer';
import './index.css';

const App: React.FC = () => {
  return (
    <>
      {/* Background elements */}
      <div className="stars"></div>
      <div className="twinkling"></div>
      <div className="clouds"></div>

      {/* Main content */}
      <div className="episode-app-page" style={{ color: 'white' }}>
        <Logo />
        <Routes>
          <Route path="/" element={<Post />} />
          <Route path="/episode/:id" element={<PostContent />} />
          <Route path="*" element={<NotFound />} />
        </Routes>
        <Footer />
      </div>
    </>
  );
};

export default App;