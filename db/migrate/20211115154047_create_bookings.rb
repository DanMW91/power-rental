class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true
      t.string :status
      t.string :start_date
      t.string :end_date
      t.float :total_price

      t.timestamps
    end
  end
end
