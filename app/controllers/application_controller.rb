class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    answer = 12345 + 7
    { message: "Good luck with your project! Also the answer is #{ answer }" }.to_json
  end

  get "/movies" do
    movies = Movie.all
    movies.to_json
  end

  post "/movies" do
    movie = Movie.create(params)
    movie.to_json
  end

end
