class AddingSpeciesToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :species, :string
  end
end
