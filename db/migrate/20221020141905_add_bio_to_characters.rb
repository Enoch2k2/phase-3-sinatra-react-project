class AddBioToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :bio, :string
  end
end
