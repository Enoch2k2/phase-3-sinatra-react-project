class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project! Also the answer is #{ answer }" }.to_json
  end

  get "/movies" do
    movies = Movie.all
    movies.to_json(include: [:characters])
  end

  post "/movies" do
    movie = Movie.create(params)
    movie.to_json(include: [:characters])
  end

  get "/characters/:id" do
    character = Character.find_by_id(params[:id])
    if character
      character.to_json(include: [:movies])
    else
      { message: "Character Not Found" }.to_json
    end
  end
  
  post "/characters" do
    movie = Movie.find_by_id(params[:movie_id])
    character = movie.characters.create(params[:character])
    character.to_json(include: [:movies])
  end

end
