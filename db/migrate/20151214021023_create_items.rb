class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.float :price
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
