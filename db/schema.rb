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

ActiveRecord::Schema.define(version: 20170322181634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "street_no"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customer_contracts", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.date     "notice_period"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "cancellation_notice"
    t.decimal  "recurring_fee"
    t.boolean  "isactive"
    t.decimal  "application_fee"
    t.boolean  "automatic_renew"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["customer_id"], name: "index_customer_contracts_on_customer_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_home"
    t.string   "phone_mobile"
    t.date     "birthdate"
    t.integer  "gender"
    t.string   "photo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "club_id"
    t.index ["club_id"], name: "index_customers_on_club_id", using: :btree
  end

  add_foreign_key "customers", "clubs"
end
