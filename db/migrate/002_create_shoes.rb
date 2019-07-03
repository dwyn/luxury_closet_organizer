class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :brand
      t.string :style
      t.string :color
      t.string :url
      t.belongs_to :user, foreign_key: true
      t.belongs_to :designer, foreign_key: true
      t.timestamps
    end
  end
end
