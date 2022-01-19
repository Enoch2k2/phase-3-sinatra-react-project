class BlogsController < ApplicationController

  get '/blogs' do
    @blogs = Blog.all
    @blogs.to_json(include: [:author])
  end

  post '/blogs' do
=begin
    params {
      author: {
        name: "Sarah"
      },
      blog: {
        title: "",
        content: ""
      }
    }

    params[:author]
    params[:blog]
=end
    # find or create an author
    # use the author to create a new unsaved blog
    # if saved (meaning everything is good data)
      # return the blog json
    # otherwise if unsaved (meaning bad data)
      # return errors
    errors = []

    @author = Author.find_or_create_by(name: params[:author][:name])

    unless @author.id
      errors = errors.concat(@author.errors.full_messages)
    end

    @blog = @author.blogs.build(params[:blog])

    if @author.id && @blog.save
      @blog.to_json(include: [:author])
    elsif !@author.id && !@blog.valid?
      { errors: errors.concat(@blog.errors.full_messages) }.to_json
    elsif !@author.id && @blog.valid?
      { errors: errors }.to_json
    else
      { errors: @blog.errors.full_messages }.to_json
    end
  end

  delete '/blogs/:id' do
    find_blog
    if @blog
      @blog.destroy
      @blog.to_json
    else
      { errors: ["Blog doesn't exist"]}.to_json
    end
  end

  private
    def find_blog
      @blog = Blog.find_by_id(params[:id])
    end
end