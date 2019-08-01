class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :national_park_id
      t.integer :user_id

      t.timestamps
    end
  end
end
