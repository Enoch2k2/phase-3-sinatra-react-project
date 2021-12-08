import React, { useState, useEffect } from 'react';
import Navbar from "./components/navigation/Navbar";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from "./components/static/Home";
import BlogList from "./components/blogs/BlogList";
import BlogForm from "./components/blogs/BlogForm";

const App = () => {
  const [blogs, setBlogs] = useState([])

  useEffect(() => {
    fetch('http://localhost:9292/blogs')
      .then(resp => resp.json())
      .then(data => setBlogs(data))
  }, [])

  return (
    <Router>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/blogs" element={<BlogList blogs={ blogs } />} />
        <Route path="/blogs/new" element={<BlogForm />} />
      </Routes>
    </Router>
  );
}

export default App;
