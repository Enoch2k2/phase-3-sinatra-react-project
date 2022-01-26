import React, { useState, useEffect } from 'react';
import { baseUrl } from '../../Globals';
import { useParams } from 'react-router-dom';
import BlogCard from '../blogs/BlogCard';

const Author = ({ deleteBlog }) => {
  const [author, setAuthor] = useState({ blogs: [] })
  const { id } = useParams()

  useEffect(() => {
    fetch(baseUrl + '/authors/' + id)
      .then(resp => resp.json())
      .then(data => setAuthor(data))
  }, [])

  const authorDeleteBlog = blog => {
    setAuthor({
      ...author,
      blogs: author.blogs.filter(b => b.id !== blog.id)
    })
  }

  const blogCards = author.blogs.map(blog => {
    return <BlogCard blog={ blog } key={ blog.id } deleteBlog={ deleteBlog } author={ author } authorDeleteBlog={ authorDeleteBlog } />
  })
  return (
    <div>
      <h1>{ author.name }</h1>
      { blogCards }
    </div>
  );
};

export default Author;
