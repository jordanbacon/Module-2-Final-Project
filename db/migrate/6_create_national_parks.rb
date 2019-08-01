class CreateNationalParks < ActiveRecord::Migration[5.2]
    def change
      create_table :national_parks do |t|
        t.string :name
        t.string :description
        t.string :location
  
        t.timestamps
      end
    end
end