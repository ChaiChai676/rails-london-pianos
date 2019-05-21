class AddCoordinatesToPianos < ActiveRecord::Migration[5.2]
  def change
    add_column :pianos, :latitude, :float
    add_column :pianos, :longitude, :float
  end
end
