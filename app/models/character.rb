class Character < ActiveRecord::Base
  has_many :movie_characters, dependent: :destroy
  has_many :movies, through: :movie_characters
end