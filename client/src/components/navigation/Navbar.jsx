import React from 'react'
import { Link } from 'react-router-dom';

const Navbar = () => {
  return (
    <div>
      <nav>
        <ul>
          <li><Link to="/">Home Page</Link></li>
          <li><Link to="/blogs">List Blogs</Link></li>
          <li><Link to="/blogs/new">Create Blog</Link></li>
        </ul>
      </nav>
    </div>
  )
}

export default Navbar
