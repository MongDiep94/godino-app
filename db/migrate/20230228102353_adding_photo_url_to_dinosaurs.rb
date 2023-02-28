class AddingPhotoUrlToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :photo_url, :string
  end
end
