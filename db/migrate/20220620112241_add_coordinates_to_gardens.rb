class AddCoordinatesToGardens < ActiveRecord::Migration[6.1]
  def change
    add_column :gardens, :latitude, :float
    add_column :gardens, :longitude, :float
  end
end
