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

ActiveRecord::Schema.define(version: 20160114152315) do

  create_table "orders", force: :cascade do |t|
    t.float    "volume"
    t.datetime "expiry"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "ph"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tank_product_compatibilities", force: :cascade do |t|
    t.integer  "tank_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tank_product_compatibilities", ["product_id"], name: "index_tank_product_compatibilities_on_product_id"
  add_index "tank_product_compatibilities", ["tank_id"], name: "index_tank_product_compatibilities_on_tank_id"

  create_table "tanks", force: :cascade do |t|
    t.string   "name"
    t.float    "capacity_min"
    t.float    "capacity_max"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
