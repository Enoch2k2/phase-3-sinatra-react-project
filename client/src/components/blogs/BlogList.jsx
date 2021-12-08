import React from 'react'
import BlogCard from './BlogCard'

const BlogList = ({ blogs }) => {

  const blogCards = blogs.map(blog => <BlogCard blog={ blog } key={ blog.id } />)
  return (
    <div>
      <h1>Blog List</h1>
      <div>
        { blogCards }
      </div>
    </div>
  )
}

export default BlogList
