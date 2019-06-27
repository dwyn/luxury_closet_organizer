class CreateShoes < ActiveRecord::Migration[4.2]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :brand
      t.string :style
      t.string :url
      t.string :color
      t.integer :user_id
      t.integer :designer_id
      t.timestamps null: false
    end
  end
end
