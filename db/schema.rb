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

ActiveRecord::Schema.define(version: 20160916234338) do

  create_table "cupids_arrows", force: :cascade do |t|
    t.string  "longitude"
    t.string  "latitude"
    t.string  "email"
    t.string  "first_name"
    t.string  "last_name"
    t.integer "order_id"
  end

  add_index "cupids_arrows", ["order_id"], name: "index_cupids_arrows_on_order_id"

  create_table "delivery_tags", force: :cascade do |t|
    t.integer "user_id"
    t.integer "to_user"
  end

  add_index "delivery_tags", ["user_id"], name: "index_delivery_tags_on_user_id"

  create_table "items", force: :cascade do |t|
    t.string  "name"
    t.float   "price"
    t.integer "likes_count"
    t.integer "location_id"
  end

  add_index "items", ["location_id"], name: "index_items_on_location_id"

  create_table "locations", force: :cascade do |t|
    t.string  "curr_status"
    t.integer "like_count"
    t.string  "street"
    t.string  "city"
    t.string  "state"
    t.string  "zip_code"
    t.string  "full_address"
    t.string  "longitude"
    t.string  "latitude"
    t.string  "curr_status_img"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "items_id"
  end

  add_index "order_items", ["items_id"], name: "index_order_items_on_items_id"
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.float   "total_price"
    t.float   "sub_total"
    t.float   "sales_tax"
    t.integer "item_count"
    t.integer "item_id"
    t.string  "full_shipping_address"
    t.string  "state"
    t.string  "city"
    t.string  "zip_code"
    t.integer "delivery_tags_id"
  end

  add_index "orders", ["delivery_tags_id"], name: "index_orders_on_delivery_tags_id"
  add_index "orders", ["item_id"], name: "index_orders_on_item_id"

  create_table "promotions", force: :cascade do |t|
    t.string  "promo_code"
    t.integer "promo_type"
    t.float   "promo_discounted_percentage"
    t.float   "promo_discounted_total"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "full_address"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: :cascade do |t|
    t.string  "url"
    t.integer "user_id"
    t.integer "user_to_id"
  end

  add_index "videos", ["user_id"], name: "index_videos_on_user_id"
  add_index "videos", ["user_to_id"], name: "index_videos_on_user_to_id"

end
