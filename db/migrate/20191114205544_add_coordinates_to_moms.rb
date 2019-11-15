class AddCoordinatesToMoms < ActiveRecord::Migration[5.2]
  def change
    add_column :moms, :latitude, :float
    add_column :moms, :longitude, :float
  end
end
