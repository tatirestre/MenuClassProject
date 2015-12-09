class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_line_1
      t.string :street_line_2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
