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

ActiveRecord::Schema.define(version: 2018_07_11_210728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carrier_lines", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "carrier_plan_id"
    t.index ["carrier_plan_id"], name: "index_carrier_lines_on_carrier_plan_id"
  end

  create_table "carrier_plans", force: :cascade do |t|
    t.string "name"
    t.float "data_amount"
    t.decimal "data_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "carrier_id"
    t.index ["carrier_id"], name: "index_carrier_plans_on_carrier_id"
  end

  create_table "carriers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_lines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_plan_id"
    t.index ["user_plan_id"], name: "index_user_lines_on_user_plan_id"
  end

  create_table "user_plans", force: :cascade do |t|
    t.integer "line_quantity"
    t.boolean "auto_pay"
    t.boolean "senior_pricing"
    t.boolean "military_pricing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "carrier_lines", "carrier_plans"
  add_foreign_key "carrier_plans", "carriers"
  add_foreign_key "user_lines", "user_plans"
end
