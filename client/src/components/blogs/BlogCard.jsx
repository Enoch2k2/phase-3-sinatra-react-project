import React from 'react'

const BlogCard = ({ blog }) => {
  return (
    <div>
      <h3>{ blog.title }</h3>
      <p><em>By: { blog.author.name} </em></p>
      <p>{ blog.content }</p>
      <button>Delete</button>
    </div>
  )
}

export default BlogCard
