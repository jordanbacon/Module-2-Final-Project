class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.integer :tour_id
      t.integer :user_id

      t.timestamps
    end
  end
end
