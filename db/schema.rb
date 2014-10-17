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

ActiveRecord::Schema.define(version: 20141017023637) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "phone"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "invoice_number"
    t.datetime "date"
    t.string   "make"
    t.string   "model"
    t.string   "serial_number"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "request"
    t.text     "description"
    t.text     "remarks"
    t.decimal  "parts",          precision: 2, scale: 0
    t.decimal  "tax",            precision: 2, scale: 0
    t.decimal  "service_call",   precision: 2, scale: 0
    t.decimal  "labor",          precision: 2, scale: 0
    t.decimal  "total",          precision: 2, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

  create_table "pages", force: true do |t|
    t.string   "name"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
