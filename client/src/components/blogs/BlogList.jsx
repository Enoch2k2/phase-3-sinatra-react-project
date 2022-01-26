import React from 'react'
import BlogCard from './BlogCard'

const BlogList = ({ blogs, deleteBlog }) => {

  const blogCards = blogs.map(blog => <BlogCard blog={ blog } key={ blog.id } deleteBlog={ deleteBlog } />)
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
