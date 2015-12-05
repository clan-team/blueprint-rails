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

ActiveRecord::Schema.define(version: 20151205230630) do

  create_table "line_items", force: :cascade do |t|
    t.integer "quantity",   limit: 4
    t.integer "order_id",   limit: 4
    t.integer "product_id", limit: 4
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.integer  "user_id", limit: 4
  end

  create_table "product_images", force: :cascade do |t|
    t.string   "filename",   limit: 255
    t.integer  "project_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "price",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "password_hash", limit: 255
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
