class MovieCharacter < ActiveRecord::Base
  belongs_to :character
  belongs_to :movie
end