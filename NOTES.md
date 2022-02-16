# React / Sinatra Project Build # 2

### Overview
We'll have a user that has a list of books. Every book that they own they will put in a reading order. Then mark completed when they had read the book and it will display the next book they need to read.

### Features
* home page
* user login / signup
* way to create books or select them
  * user will fill out the name of a book, if not found, then it will display the create book form
* update the book (marking book complete, also optionaly updating titles etc)
* delete the book
* book list (all)
* book list (todo)
* book list (read)
* review the book (comments)
* likes to the book

### MVP
* home page
* user login / signup
* way to create books or select them
  * user will fill out the name of a book, if not found, then it will display the create book form
* update the book (marking book complete, also optionaly updating titles etc)
* delete the book
* book list (all)
* book list (todo)
* book list (read)


### Stretch Goals
* we could have authors!
* review the book (comments)
* likes to the book
* dislikes to the book

### Order of features to work on
1. home page
2. user login / signup
3. book list (all)
4. book list (todo)
5. book list ordering
6. book list (read)
7. book search or create
8. book delete
9. book update

### Stretch features to work on
10. authors
11. likes
12. dislikes
13. reviews

### Models
User
---
email
first_name
last_name
has_many user_books
has_many books, through user_books
---

UserBooks
---
completed boolean
listed_to_read boolean
order integer (drag and drop event)

belongs_to user
belongs_to book
---

Book
---
title
book_image_url
description
author : string for now!

has_many user_books
has_many users, through user_books
---