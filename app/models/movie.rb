class Movie < ActiveRecord::Base
  has_many :movie_characters, dependent: :destroy
  has_many :characters, through: :movie_characters # characters.create characters.build character_ids, characters, characters=
end