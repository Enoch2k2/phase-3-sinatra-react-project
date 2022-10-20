class CreateMovieCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_characters do |t|
      t.integer :movie_id
      t.integer :character_id

      t.timestamps
    end
  end
end
