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

ActiveRecord::Schema.define(version: 20170323123150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_services", force: :cascade do |t|
    t.integer  "club_id"
    t.string   "name"
    t.decimal  "fee"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["club_id"], name: "index_additional_services_on_club_id", using: :btree
  end

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
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_clubs_on_employee_id", using: :btree
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

  create_table "employee_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "employee_type_id"
    t.date     "birthdate"
    t.decimal  "salary"
    t.string   "phone_home"
    t.string   "phone_mobile"
    t.string   "email"
    t.integer  "gender"
    t.string   "photo"
    t.integer  "club_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["club_id"], name: "index_employees_on_club_id", using: :btree
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id", using: :btree
  end

  create_table "training_bookings", force: :cascade do |t|
    t.integer  "training_course_id"
    t.integer  "customer_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["customer_id"], name: "index_training_bookings_on_customer_id", using: :btree
    t.index ["training_course_id"], name: "index_training_bookings_on_training_course_id", using: :btree
  end

  create_table "training_courses", force: :cascade do |t|
    t.integer  "training_room_id"
    t.integer  "employee_id"
    t.integer  "participants_min"
    t.integer  "participants_max"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "isrecurring"
    t.string   "name"
    t.decimal  "fee"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["employee_id"], name: "index_training_courses_on_employee_id", using: :btree
    t.index ["training_room_id"], name: "index_training_courses_on_training_room_id", using: :btree
  end

  create_table "training_rooms", force: :cascade do |t|
    t.integer  "capacity"
    t.integer  "club_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_training_rooms_on_club_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "additional_services", "clubs"
  add_foreign_key "clubs", "employees"
  add_foreign_key "customers", "clubs"
  add_foreign_key "employees", "clubs"
  add_foreign_key "employees", "employee_types"
  add_foreign_key "training_bookings", "customers"
  add_foreign_key "training_bookings", "training_courses"
  add_foreign_key "training_courses", "employees"
  add_foreign_key "training_courses", "training_rooms"
  add_foreign_key "training_rooms", "clubs"
end
