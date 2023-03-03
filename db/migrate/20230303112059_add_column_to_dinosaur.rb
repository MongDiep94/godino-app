class AddColumnToDinosaur < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :rating, :integer
  end
end
