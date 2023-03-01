class AddCoordinatesToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :latitude, :float
    add_column :dinosaurs, :longitude, :float
  end
end
