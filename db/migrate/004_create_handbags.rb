class CreateHandbags < ActiveRecord::Migration[5.2]
  def change
    create_table :handbags do |t|
      t.string :brand
      t.string :name
      t.string :style
      t.string :color
      t.string :url
      t.belongs_to :user, foreign_key: true
      t.belongs_to :designer, foreign_key: true
      t.timestamps 
    end
  end
end
