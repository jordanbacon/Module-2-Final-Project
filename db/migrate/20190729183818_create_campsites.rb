class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
      t.string :location
      t.string :accomodation
      t.string :length_of_stay
      t.integer :price

      t.timestamps
    end
  end
end
