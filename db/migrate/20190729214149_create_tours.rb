class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :national_park_id

      t.timestamps
    end
  end
end
