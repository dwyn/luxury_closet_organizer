class CreateDesigners < ActiveRecord::Migration[4.2]
  def change
    create_table :designers do |t|
      t.string :name
      t.date :birth_date
      t.string :birth_country
      t.string :password_digest
      t.integer :user_id
      t.integer :shoe_id
      t.timestamps null: false
    end
  end
end
