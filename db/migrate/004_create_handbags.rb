class CreateHandbags < ActiveRecord::Migration[4.2]
  def change
    create_table :handbags do |t|
      t.string :brand
      t.string :name
      t.string :style
      t.string :url
      t.string :color
      t.integer :user_id
      t.integer :designer_id
      t.timestamps null: false
    end
  end
end
