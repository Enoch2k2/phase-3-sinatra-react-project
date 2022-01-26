import React from 'react'
import { baseUrl, headers } from '../../Globals';
import { Link, useNavigate } from 'react-router-dom'

const BlogCard = ({ blog, deleteBlog, author, authorDeleteBlog }) => {

  const handleDelete = () => {
    fetch(baseUrl + '/blogs/' + blog.id, {
      method: "DELETE",
      headers
    })
      .then(resp => resp.json())
      .then(data => {
        deleteBlog( data );
        if(author) {
          authorDeleteBlog(data);
        }
      })
  }

  return (
    <div>
      <h3>{ blog.title }</h3>
      { blog.author ? <p><em>By: <Link to={`/authors/${blog.author.id}`}>{ blog.author.name}</Link></em></p> : <p><em>By: <Link to={`/authors/${author.id}`}>{ author.name}</Link></em></p>}
      <p>{ blog.content }</p>
      <button onClick={ handleDelete }>Delete</button>
    </div>
  )
}

export default BlogCard
