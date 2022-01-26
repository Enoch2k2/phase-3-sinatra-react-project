# Overview
An application that allows us to create blogs as different authors. Would allow us to comment on blogs while using a commenter as a user.

# Feature List
* Home Page
* Create Blog Route (post)
* List Blogs Route (get)
* Update Blog (patch)
* Delete Blog (delete)
* Show 1 specific blog (get (show))
* Create Comment Route (post)

# MVP
1. List Blogs (sinatra)) - x
2. Create Blog Route (sinatra)) - x
3. Delete Blogs (sinatra)) - x
4. Home Page (react side) - x
5. List Blogs (react) - x
6. Create Blog (react) - x
7. Delete Blog (react) - x

# Stretch Goals
8. List Blogs Via Author
9. Show 1 specific blog (get (show))
10. Update Blog (patch)
11. Create Comment Route (post)


## Models

Blog
---
title
content
belongs_to author (foreign_key)

Author
---
name
has_many blogs

### Routes

GET /blogs (for sending back all blogs)
POST /blogs (for creating a blog)
DELETE /blogs/:id (for deleting blogs)

GET /authors (for sending back all authors and blogs they've written)
GET /authors/:id (for sending back an author and all of the author's blogs)
