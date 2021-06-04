# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_04_202646) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.integer "users_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "company_id"
    t.string "email"
    t.string "phone"
    t.integer "facility_id"
    t.string "role"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.integer "throughput_id"
    t.integer "company_id"
    t.integer "padd_id"
    t.string "state"
    t.string "city"
    t.string "zip"
    t.string "site_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "padds", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spot_prices", force: :cascade do |t|
    t.date "date"
    t.float "wti"
    t.float "brent"
    t.float "nyh_conv"
    t.float "usgc_conv"
    t.float "rbob"
    t.float "no_2_heating_oil"
    t.float "nyh_usld"
    t.float "usgc_usld"
    t.float "la_usld"
    t.float "usgc_kero"
    t.float "mv_propane"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "all_products"
    t.integer "crude"
    t.integer "total_gasoline"
    t.integer "kero"
    t.integer "diesel"
    t.integer "resid"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "throughputs", force: :cascade do |t|
    t.integer "facility_id"
    t.string "product"
    t.integer "year"
    t.string "supply_details"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
