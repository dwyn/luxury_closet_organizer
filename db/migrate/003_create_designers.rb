class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
      t.string :name
      t.string :birth_country
      t.belongs_to :user, foreign_key: true
      t.belongs_to :shoe, foreign_key: true
      t.belongs_to :handbag, foreign_key: true
      t.timestamps
    end
  end
end
