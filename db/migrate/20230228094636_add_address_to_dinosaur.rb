class AddAddressToDinosaur < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :address, :string
  end
end
