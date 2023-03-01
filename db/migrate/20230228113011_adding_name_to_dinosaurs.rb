class AddingNameToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :name, :string
  end
end
