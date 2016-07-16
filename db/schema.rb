# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160716203808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meal_items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "meal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "meal_items", ["meal_id"], name: "index_meal_items_on_meal_id", using: :btree

  create_table "meals", force: :cascade do |t|
    t.string   "title"
    t.integer  "price"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meals", ["user_id"], name: "index_meals_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.text     "notes"
    t.integer  "user_id"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["meal_id"], name: "index_orders_on_meal_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_foreign_key "meal_items", "meals"
  add_foreign_key "meals", "users"
  add_foreign_key "orders", "meals"
  add_foreign_key "orders", "users"
end
