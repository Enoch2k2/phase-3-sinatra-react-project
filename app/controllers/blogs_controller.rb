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

    @author = Author.find_or_create_by(name: params[:author][:name])
    @blog = @author.blogs.build(params[:blog])

    if @blog.save
      @blog.to_json(include: [:author])
    else
      { errors: @blog.errors.full_messages }.to_json
    end
  end

  private
    def find_blog
      @blog = Blog.find_by_id(params[:id])
    end
end