class RemoveReviewFromDinosaurs < ActiveRecord::Migration[7.0]
  def change
    remove_column :dinosaurs, :review
    add_column :bookings, :rating, :integer
    add_column :dinosaurs, :review, :text
    remove_column :dinosaurs, :availability_end
    remove_column :dinosaurs, :availability_start
  end
end
