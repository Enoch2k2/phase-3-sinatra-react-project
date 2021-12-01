puts "🌱 Seeding spices..."

# Seed your database here

###  Create Authors
bob = Author.create(name: "Bob")

### Create Blogs
bob.blogs.create(title: "Blog 1", content: "Content 1")
bob.blogs.create(title: "Blog 2", content: "Content 2")
bob.blogs.create(title: "Blog 3", content: "Content 3")

puts "✅ Done seeding!"
