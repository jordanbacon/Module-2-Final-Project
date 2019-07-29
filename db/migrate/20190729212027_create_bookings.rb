class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :campsite_id
      t.integer :user_id

      t.timestamps
    end
  end
end
