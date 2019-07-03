# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 4) do

  create_table "designers", force: :cascade do |t|
    t.string "name"
    t.string "birth_country"
    t.integer "user_id"
    t.integer "shoe_id"
    t.integer "handbag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["handbag_id"], name: "index_designers_on_handbag_id"
    t.index ["shoe_id"], name: "index_designers_on_shoe_id"
    t.index ["user_id"], name: "index_designers_on_user_id"
  end

  create_table "handbags", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "style"
    t.string "color"
    t.string "url"
    t.integer "user_id"
    t.integer "designer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designer_id"], name: "index_handbags_on_designer_id"
    t.index ["user_id"], name: "index_handbags_on_user_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "style"
    t.string "color"
    t.string "url"
    t.integer "user_id"
    t.integer "designer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designer_id"], name: "index_shoes_on_designer_id"
    t.index ["user_id"], name: "index_shoes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
