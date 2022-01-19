import React, { useState, useEffect } from 'react';
import Navbar from "./components/navigation/Navbar";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from "./components/static/Home";
import BlogList from "./components/blogs/BlogList";
import BlogForm from "./components/blogs/BlogForm";
import ErrorList from './components/errors/ErrorList';
import { baseUrl } from './Globals';

const App = () => {
  const [blogs, setBlogs] = useState([])
  const [errors, setErrors] = useState([])

  useEffect(() => {
    fetch(baseUrl + '/blogs')
      .then(resp => resp.json())
      .then(data => setBlogs(data))
  }, [])

  const addBlog = blog => {
    setBlogs([...blogs, blog]);
  }

  const addErrors = errors => {
    setErrors(errors);
  }

  const clearErrors = () => {
    setErrors([]);
  }

  return (
    <Router>
      <Navbar />
      <ErrorList errors={ errors } />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/blogs" element={<BlogList blogs={ blogs } />} />
        <Route path="/blogs/new" element={<BlogForm addBlog={ addBlog } addErrors={ addErrors } clearErrors={ clearErrors } />} />
      </Routes>
    </Router>
  );
}

export default App;
