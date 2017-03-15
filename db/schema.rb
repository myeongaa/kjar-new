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

ActiveRecord::Schema.define(version: 20170314042544) do

  create_table "boards", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.float    "star"
    t.string   "image_url",  default: ""
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "c_postcode"
    t.string   "c_address"
    t.string   "c_daddress"
    t.string   "tel"
    t.string   "opentime"
    t.string   "closetime"
    t.string   "com_lat",     default: "35.969329"
    t.string   "com_lng",     default: "126.957320"
    t.integer  "csort_id"
    t.integer  "openclose",   default: 1
    t.integer  "nticket_max", default: 1
    t.integer  "runtime",     default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "csorts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.string   "reserve_time"
    t.string   "reserve_date"
    t.string   "requestmenu"
    t.integer  "person_num"
    t.integer  "confirm_num",  default: 1
    t.string   "comment"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name",                                null: false
    t.string   "phone",                               null: false
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

end
