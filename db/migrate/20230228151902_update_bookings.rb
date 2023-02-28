class UpdateBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date_reservation
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    add_column :bookings, :totla_price, :integer
  end
end
