class AuthorsController < ApplicationController

  get '/authors/:id' do
    find_author
    @author.to_json(include: [:blogs])
  end

  private
    def find_author
      @author = Author.find_by_id(params[:id])
    end
end