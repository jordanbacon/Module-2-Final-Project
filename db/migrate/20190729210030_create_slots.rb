class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.integer :tour_id
      t.integer :user_id, null: true
      t.integer :time

      t.timestamps
    end
  end
end
