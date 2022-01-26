import React, { useState, useEffect } from 'react'
import { baseUrl, headers } from '../../Globals';
import { useNavigate } from 'react-router-dom';

const BlogForm = ({ addBlog, addErrors, clearErrors }) => {
  const [title, setTitle] = useState("");
  const [content, setContent] = useState("");
  const [authorName, setAuthorName] = useState("");

  const navigate = useNavigate();

  useEffect(() => {
    return () => {
      // clean up errors
      clearErrors();
    }
  }, [])

  const handleSubmit = e => {
    e.preventDefault();

    const params = {
      author: {
        name: authorName
      },
      blog: {
        title,
        content
      }
    }

    fetch(baseUrl + "/blogs", {
      method: "POST",
      headers,
      body: JSON.stringify(params)
    })
      .then(resp => resp.json())
      .then(data => {
        if(data.errors) {
          addErrors(data.errors);
        } else {
          addBlog(data);
          navigate("/blogs");
        }
      })
  }

  return (
    <div>
      <h1>Blog Form</h1>

      <form onSubmit={ handleSubmit }>
        <div>
          <label htmlFor="title">Title</label>
          <input type="text" name="title" id="title" value={ title } onChange={ e => setTitle(e.target.value) } />
        </div>
        <div>
          <label htmlFor="content">Content</label><br />
          <textarea name="content" id="content" cols="30" rows="10" value={ content } onChange={ e => setContent( e.target.value )}></textarea>
        </div>

        <div>
          <label htmlFor="author">Author</label>
          <input type="text" name="author" id="author" value={ authorName } onChange={ e => setAuthorName( e.target.value )} />
        </div>

        <input type="submit" value="Create Blog" />
      </form>
    </div>
  )
}

export default BlogForm
