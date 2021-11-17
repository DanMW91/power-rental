class AddDefaultValueToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:bookings, :status, 'pending')
  end
end
