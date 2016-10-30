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

ActiveRecord::Schema.define(version: 20161030021209) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "stylist_id"
    t.integer  "client_id"
    t.integer  "service_id"
    t.datetime "date"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["service_id"], name: "index_bookings_on_service_id"
    t.index ["stylist_id"], name: "index_bookings_on_stylist_id"
  end

  create_table "calendar_bookings", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "shop_calendar_id"
    t.boolean  "occupy_chair"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["booking_id"], name: "index_calendar_bookings_on_booking_id"
    t.index ["shop_calendar_id"], name: "index_calendar_bookings_on_shop_calendar_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "image_url"
    t.integer  "stylist_id"
    t.string   "sex"
    t.string   "contactNo"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stylist_id"], name: "index_clients_on_stylist_id"
  end

  create_table "hair_dressers", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "duration"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shop_calendars", force: :cascade do |t|
    t.integer  "shop_id"
    t.integer  "stylist_id"
    t.datetime "slot_start"
    t.integer  "duration"
    t.datetime "slot_end"
    t.boolean  "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_calendars_on_shop_id"
    t.index ["stylist_id"], name: "index_shop_calendars_on_stylist_id"
  end

  create_table "shop_settings", force: :cascade do |t|
    t.integer  "calender_slot_size"
    t.integer  "days_ahead_calender"
    t.integer  "shop_id"
    t.date     "start_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shop_id"], name: "index_shop_settings_on_shop_id"
  end

  create_table "shop_stylist_workdays", force: :cascade do |t|
    t.integer  "shop_id"
    t.integer  "stylist_id"
    t.string   "day"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "working"
    t.date     "effective_date"
    t.date     "end_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["shop_id"], name: "index_shop_stylist_workdays_on_shop_id"
    t.index ["stylist_id"], name: "index_shop_stylist_workdays_on_stylist_id"
  end

  create_table "shop_stylists", force: :cascade do |t|
    t.integer  "shop_id"
    t.integer  "stylist_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_stylists_on_shop_id"
    t.index ["stylist_id"], name: "index_shop_stylists_on_stylist_id"
  end

  create_table "shop_workdays", force: :cascade do |t|
    t.integer  "shop_id"
    t.string   "day"
    t.time     "start_time"
    t.time     "close_time"
    t.boolean  "open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_workdays_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_no"
    t.string   "alt_contact_no"
    t.string   "email"
    t.string   "website"
    t.string   "image_url"
    t.string   "logo_url"
    t.string   "theme"
    t.boolean  "main_branch"
    t.string   "status"
    t.integer  "hair_dresser_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["hair_dresser_id"], name: "index_shops_on_hair_dresser_id"
  end

  create_table "stylists", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
