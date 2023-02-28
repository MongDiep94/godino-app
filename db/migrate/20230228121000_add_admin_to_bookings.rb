class AddAdminToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :admin, :boolean
  end
end
