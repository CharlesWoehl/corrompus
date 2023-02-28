class RenameColumnAtBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :totla_price, :total_price
  end
end
