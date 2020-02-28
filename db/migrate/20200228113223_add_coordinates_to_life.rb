class AddCoordinatesToLife < ActiveRecord::Migration[5.2]
  def change
    add_column :lives, :latitude, :float
    add_column :lives, :longitude, :float
  end
end
