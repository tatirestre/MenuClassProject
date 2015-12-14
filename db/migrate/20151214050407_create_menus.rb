class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id
      t.integer :restaurant_id
      t.string :slug

      t.timestamps null: false
    end
  end
end
